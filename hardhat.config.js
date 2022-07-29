require("@nomicfoundation/hardhat-toolbox");

const ALCHEMY_API_KEY = "TiFHXrNILfe2Xzmo8COXklPtbrAUaVge";
const PRIVATE_KEY= "eef881b2f30e51daa1848f65161984b725fbf4866d461f5380aa2909edc1cf1e";

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.8",
  networks: {
    goerli: {
      url:`https://eth-goerli.g.alchemy.com/v2/${ALCHEMY_API_KEY}`,
      accounts: [`${PRIVATE_KEY}`],
    }
  }
};
