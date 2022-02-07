
const hre = require("hardhat");

async function main() {
  
  const GameItems = await hre.ethers.getContractFactory("GameItems");
  const gameItems = await GameItems.deploy('ipfs://QmRmUkisq6afWqg1EJ7jjr1oZUSP9Pg4ftUXmBcHnPkcRt/{id}.json');

  await gameItems.deployed()

  console.log("GameItems deployed to:", gameItems.address);
}


main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
