const Opal = artifacts.require("Opal");

module.exports = function (deployer) {
  deployer.deploy(Opal);
};
