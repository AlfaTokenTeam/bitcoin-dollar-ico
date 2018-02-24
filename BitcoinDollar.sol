pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract BitcoinDollar is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function BitcoinDollar(address _owner)  UpgradeableToken(_owner) {
    name = "BitcoinDollar";
    symbol = "BTCD";
    totalSupply = 2100000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}