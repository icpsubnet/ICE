import Text "mo:base/Text";
import Array "mo:base/Array";
import Blob "mo:base/Blob";

import P2trKeyOnly "bitcoin/P2trKeyOnly";
import Types "bitcoin/Types";

import AgentTypes "types";

persistent actor {
  type Network = Types.Network;
  type BitcoinAddress = Types.BitcoinAddress;
  type SchnorrCanisterActor = Types.SchnorrCanisterActor;

  private stable var agents: [AgentTypes.Agent] = [];

  /// The Bitcoin network to connect to
  let NETWORK : Network = #mainnet;

  /// The derivation path for key derivation
  let DERIVATION_PATH : [[Nat8]] = [];

  // The key name based on network
  let KEY_NAME : Text = switch NETWORK {
    case (#regtest) "dfx_test_key";
    case (#testnet) "test_key_1";
    case (#mainnet) "key_1";
  };

  // Schnorr threshold signing actor
  let schnorr_canister_actor : SchnorrCanisterActor = actor("aaaaa-aa");

  /// Returns the canister's Bitcoin (Taproot P2TR) address
  /// Format: bc1p... on mainnet
  public func get_canister_bitcoin_address() : async BitcoinAddress {
    await P2trKeyOnly.get_address_key_only(
      schnorr_canister_actor,
      NETWORK,
      KEY_NAME,
      getDerivationPath()
    );
  };

  // Helper function for derivation path
  func getDerivationPath() : [[Nat8]] {
    Array.flatten([
      DERIVATION_PATH,
      [Blob.toArray(Text.encodeUtf8("p2tr_key_only"))]
    ]);
  };
};