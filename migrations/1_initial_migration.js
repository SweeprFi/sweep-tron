var SweepCoin = artifacts.require("./SweepCoin.sol");
const BRIDGE = "TA9u5hEB6iRKLujcWZ3Le4EhuQH4YqytD6";

module.exports = function(deployer) {
  // console.log(deployer.network, BRIDGE)
  deployer.deploy(SweepCoin, BRIDGE);
};
