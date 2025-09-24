import assert from "assert";
import { deployScript, artifacts } from "@rocketh";

const contractName = "MonetAccessManager";

export default deployScript(
  async ({ namedAccounts, network, deploy }) => {
    const { deployer } = namedAccounts;
    const chainName = network.chain.name;
    assert(deployer, "Missing named deployer account");

    console.log(`Network: ${chainName} \nDeployer: ${deployer} \nDeploying : ${contractName}`);

    const contract = await deploy(
      contractName,
      {
        account: deployer,
        artifact: artifacts.MonetAccessManager,
        args: [deployer],
      },
      {
        linkedData: {
          args: [deployer],
        },
      },
    );

    console.log(`Deployed contract: ${contractName}, network: ${chainName}, address: ${contract.address}`);
  },
  {
    tags: [contractName],
  },
);
