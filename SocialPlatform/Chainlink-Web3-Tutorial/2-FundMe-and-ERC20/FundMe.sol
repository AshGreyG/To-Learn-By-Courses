// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import { AggregatorV3Interface } from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract FundMe {
    mapping(address => uint256) public fundersToAmount;

    // We can use mapping `fundersToAmount` to record the funders who fund
    // this project (or this smart contract address)

    uint256 constant MINIMUM_VALUE = 100 * 10 ** 18;   // USD
    uint256 constant TARGET = 1000;

    // Smart contracts are unable to connect external system, data feed, APIs,
    // existing payment systems or any other off-chain resources on their own.
    
    // Deterministic    transaction: Different nodes execute same tx can get same results
    // In-deterministic transaction: Different nodes execute same tx cannot get same results 

    // Decentralized oracle network (DON) can get real word data to the web3 world. So the
    // in-deterministic transaction can be checked by every node in blockchain.

    AggregatorV3Interface internal dataFeed;

    constructor() {
        dataFeed = AggregatorV3Interface(
            0x694AA1769357215DE4FAC081bf1f309aDC325306
        );
        // https://docs.chain.link/data-feeds/price-feeds/addresses
    }

    function getChainlinkDataFeedLatestAnswer() public view returns(int) {
        (
            /* uint80 roundID          */,
            int answer,
            /* uint startedAt          */,
            /* uint timeStamp          */,
            /* uint80 answeredInRound  */
        ) = dataFeed.latestRoundData();
        return answer;
    }

    function convertEthToUsd(uint256 ethAmount) internal view returns(uint256) {
        uint256 ethPrice = uint256(getChainlinkDataFeedLatestAnswer());
        return ethAmount * ethPrice / (10 ** 8);
    }

    function fund() external payable {
        require(msg.value >= MINIMUM_VALUE, "Send more ETH");
        fundersToAmount[msg.sender] = msg.value;
    }


}