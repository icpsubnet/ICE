export const idlFactory = ({ IDL }) => {
  const BitcoinAddress = IDL.Text;
  return IDL.Service({
    'get_canister_bitcoin_address' : IDL.Func([], [BitcoinAddress], []),
  });
};
export const init = ({ IDL }) => { return []; };
