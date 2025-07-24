// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.18;

error Token__UnableToCompleteTransaction();
event Token_TokensTransferred(address indexed _from, address indexed _to);

contract Token {
    mapping (address => uint256) private s_balance;

    function name() public pure returns(string memory){
        return "TOKEN-NAME";
    }

    function totalSupply() public pure returns(uint256){
        return 100 ether;
    }

    function decimals() public pure returns(uint8){
        return 18;
    }

    function balanceOf(address _owner) public view returns(uint256){
        return s_balance[_owner];
    }

    function transfer(address _to, uint256 _amount) public {
        uint256 previousBalance = s_balance[msg.sender] + s_balance[_to];
        s_balance[msg.sender] -= _amount;
        s_balance[_to] += _amount;

        if(s_balance[msg.sender] + s_balance[_to] != previousBalance){
            revert Token__UnableToCompleteTransaction();
        }

        emit Token_TokensTransferred(msg.sender, _to);
    }
}