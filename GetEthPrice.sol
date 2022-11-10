// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract MarketPriceEth{

    //Declared an instance of imported contract
    AggregatorV3Interface internal Pricefeed;

    //the number is the address of the price feed contract(look in 10th Oct notes for more info)
    constructor() {
        Pricefeed = AggregatorV3Interface(0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e);
    }

    function getPrice() public view returns(int) {
        //the commas are the spaces for variables we haven't called, we have only called one method out of 5 from the orginal function
        ( , int price, , , ) = Pricefeed.latestRoundData();
        return price;
    }
}
