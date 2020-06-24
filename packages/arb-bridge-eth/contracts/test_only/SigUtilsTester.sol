// SPDX-License-Identifier: Apache-2.0

/*
 * Copyright 2020, Offchain Labs, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

pragma solidity ^0.5.11;

import "../libraries/SigUtils.sol";

contract SigUtilsTester {

    function parseSignature(
        bytes memory _data,
        uint256 _start
    )
        public
        pure
        returns (uint8 v, bytes32 r, bytes32 s)
    {
        return SigUtils.parseSignature(
            _data,
            _start
        );
    }

    function recoverAddressFromData(
        bytes32 _messageHash,
        bytes memory _data,
        uint256 _offset
    )
        public
        pure
        returns (address)
    {
        return SigUtils.recoverAddressFromData(
            _messageHash,
            _data,
            _offset
        );
    }
}
