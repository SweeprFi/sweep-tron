// SPDX-License-Identifier: MIT
pragma solidity 0.8.6;

interface IAsset {
    struct TransferPayload {
        bytes32 destChainIdBytes;
        address srcTokenAddress;
        uint256 srcTokenAmount;
        bytes recipient;
        uint256 partnerId;
    }

    function transferToken(TransferPayload memory transferPayload) external payable;

    function _tokenWhitelist(address) external view returns(uint256);
}
