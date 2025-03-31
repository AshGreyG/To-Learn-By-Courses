// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract HelloWorld {
    struct Info {
        string phrase;
        uint256 id;
        address addr;
    }

    Info[] info;
    string strVar = "Hello World";
    mapping(uint256 id => Info info) infoMapping;

    function addInfo(string memory helloWorldStr) internal pure 
        returns(string memory) {
        return string.concat(helloWorldStr, " from AshGrey's contract");
    }

    function sayHello(uint256 _id) public view returns(string memory) {
        if (infoMapping[_id].addr == address(0x0)) {
            return addInfo(strVar);
        } else {
            return addInfo(infoMapping[_id].phrase);
        }
    }

    function setHelloWorld(string memory newStr, uint256 _id) public {
        Info memory newInfo = Info(newStr, _id, msg.sender);
        infoMapping[_id] = newInfo;
    }
}