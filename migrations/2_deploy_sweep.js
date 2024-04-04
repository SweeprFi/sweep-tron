var SweepCoin = artifacts.require("./SweepCoin.sol");
const BRIDGE = "TYTe2ZLvY5kTGEknaqhzXPHzJXSZGZfrmg";

module.exports = function(deployer) {
  deployer.deploy(SweepCoin, BRIDGE);
};
