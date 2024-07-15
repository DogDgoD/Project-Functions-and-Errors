# Project Title

Project: Functions and Errors

## Description

The HeightContract is a simple Solidity smart contract designed to store and manage the heights of users in a decentralized manner. It allows users to set their height, retrieve the height of any user, and includes examples of Solidity's error handling mechanisms (require, assert, and revert). This contract ensures the heights are within a valid range (greater than 0 and less than or equal to 300 cm) and demonstrates how to handle errors effectively in Solidity.

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., HelloWorld.sol). Copy and paste the following code into the file:

```javascript
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
        assert(_value != 0);
        return _value;
    }

    function revertExample(uint256 _value) public pure returns (uint256) {
        if (_value == 0) {
            revert("Value cannot be zero");
        }
        return _value;
    }
}

```

## Authors

Contributors names and contact info

Lance Polo Paras
201911769@fit.edu.ph
