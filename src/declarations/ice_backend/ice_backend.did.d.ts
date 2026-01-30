import type { Principal } from '@dfinity/principal';
import type { ActorMethod } from '@dfinity/agent';
import type { IDL } from '@dfinity/candid';

export type BitcoinAddress = string;
export interface _SERVICE {
  /**
   * / Returns the canister's Bitcoin (Taproot P2TR) address
   * / Format: bc1p... on mainnet
   */
  'get_canister_bitcoin_address' : ActorMethod<[], BitcoinAddress>,
}
export declare const idlFactory: IDL.InterfaceFactory;
export declare const init: (args: { IDL: typeof IDL }) => IDL.Type[];
