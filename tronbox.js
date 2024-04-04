module.exports = {
  networks: {
    mainnet: {
      privateKey: process.env.OWNER_PKEY,
      userFeePercentage: 100,
      feeLimit: 1000 * 1e6,
      fullHost: 'https://api.trongrid.io',
      network_id: '1'
    },
    shasta: {
      privateKey: process.env.OWNER_PKEY,
      userFeePercentage: 50,
      feeLimit: 1000 * 1e6,
      fullHost: 'https://api.shasta.trongrid.io',
      network_id: '2'
    },
    compilers: {
      solc: {
        version: '0.8.6'
      }
    }
  },
  solc: {
    optimizer: {
      enabled: true,
      runs: 200
    },
  }
}
