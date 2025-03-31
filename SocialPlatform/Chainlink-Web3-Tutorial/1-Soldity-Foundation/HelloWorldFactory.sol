// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

import { HelloWord } from "./HelloWorld.sol";

contract HelloWordFactory {
    HelloWord newHelloWorld;
    HelloWord[] helloWorldList;

    function createHelloWorld() public {
        newHelloWorld = new HelloWord();
        helloWorldList.push(newHelloWorld);
    }

    function getHelloWorldByIndex(uint256 _id) public view returns(HelloWord) {
        return helloWorldList[_id];
    }

    function callSayHelloFromFactory(uint256 _index, uint256 _id) public view
        returns(string memory) {
        return helloWorldList[_index].sayHello(_id);
    }

    function callSetHelloWorldFactory(
        uint256 _index,
        string memory newStr,
        uint256 _id
    ) public {
        helloWorldList[_index].setHelloWorld(newStr, _id);
    }
}