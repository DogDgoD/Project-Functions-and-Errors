// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract HeightContract {
    mapping(address => uint256) public heights;

    function setHeight(uint256 _height) public {
        // Require height to be greater than 0
        require(_height > 0, "Height must be greater than 0");
        
        // Require height to be less than or equal to 300 cm
        require(_height <= 300, "Height must be less than or equal to 300 cm");

        // Set height for the sender
        heights[msg.sender] = _height;
    }

    function getHeight(address _user) public view returns (uint256) {
        return heights[_user];
    }

    function assertExample(uint256 _value) public pure returns (uint256) {
        // Assert that the value is not zero
        assert(_value != 0);
        return _value;
    }

    function revertExample(uint256 _value) public pure returns (uint256) {
        // Revert if the value is zero
        if (_value == 0) {
            revert("Value cannot be zero");
        }
        return _value;
    }
}
