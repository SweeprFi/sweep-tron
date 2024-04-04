// SPDX-License-Identifier: MIT
pragma solidity 0.8.6;

import "./Ownable.sol";
import "./TRC20/TRC20Detailed.sol";

contract SweepCoin is TRC20Detailed, Ownable {
    address public bridge;

    /* ========== Events ========== */
    event TokenBurned(address indexed from, uint256 amount);
    event TokenMinted(address indexed to, uint256 amount);
    event BridgeChanged(address indexed bridge);
    event FastMultisigChanged(address indexed fastMultisig);

    /* ========== Errors ========== */
    error NotBridge();
    error ZeroAddressDetected();

    constructor(
        address _bridge
    ) TRC20Detailed("SweepCoin", "SWEEP", 18) {
        setBridge(_bridge);
    }

    /* ========== MODIFIERS ========== */
    modifier onlyBridge() {
        if (msg.sender != bridge) revert NotBridge();
        _;
    }

    /* ========== Settings ========== */
    /**
     * @dev To pause/unpause minting, set the bridge to address(0)
     */
    function setBridge(address _bridge) public onlyOwner {
        bridge = _bridge;
        emit BridgeChanged(_bridge);
    }

    /* ========== Actions ========== */
    function mint(address account, uint256 amount) external onlyBridge {
        _mint(account, amount);
    }

    function burn(address account, uint256 amount) external onlyBridge {
        _burn(account, amount);
    }
}
