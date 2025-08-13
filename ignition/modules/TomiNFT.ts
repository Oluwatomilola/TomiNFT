import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";



const TomiNFTModule = buildModule("TomiNFTModule", (m) => {
 

  const TomiNFT  = m.contract("TomiNFT");

  return { TomiNFT};
});

export default TomiNFTModule;