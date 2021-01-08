/*
    Copyright 2020 ESB Devs, based on the works of the Empty Set Squad

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
*/

pragma solidity ^0.5.17;
pragma experimental ABIEncoderV2;

import "../oracle/PoolSetters.sol";

contract MockPoolState is PoolSetters {
    address private _dao;
    address private _bitcoin;

    function set(address dao, address bitcoin) external {
        _dao = dao;
        _bitcoin = bitcoin;
    }

    function dao() public view returns (IDAO) {
        return IDAO(_dao);
    }

    function bitcoin() public view returns (IBitcoin) {
        return IBitcoin(_bitcoin);
    }

    /**
     * Account
     */

    function incrementBalanceOfBondedE(address account, uint256 amount) external {
        super.incrementBalanceOfBonded(account, amount);
    }

    function decrementBalanceOfBondedE(address account, uint256 amount, string calldata reason) external {
        super.decrementBalanceOfBonded(account, amount, reason);
    }

    function incrementBalanceOfStagedE(address account, uint256 amount) external {
        super.incrementBalanceOfStaged(account, amount);
    }

    function decrementBalanceOfStagedE(address account, uint256 amount, string calldata reason) external {
        super.decrementBalanceOfStaged(account, amount, reason);
    }

    function incrementBalanceOfClaimableE(address account, uint256 amount) external {
        super.incrementBalanceOfClaimable(account, amount);
    }

    function decrementBalanceOfClaimableE(address account, uint256 amount, string calldata reason) external {
        super.decrementBalanceOfClaimable(account, amount, reason);
    }

    function incrementBalanceOfPhantomE(address account, uint256 amount) external {
        super.incrementBalanceOfPhantom(account, amount);
    }

    function decrementBalanceOfPhantomE(address account, uint256 amount, string calldata reason) external {
        super.decrementBalanceOfPhantom(account, amount, reason);
    }

    function unfreezeE(address account) external {
        super.unfreeze(account);
    }
}
