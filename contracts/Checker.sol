pragma solidity ^0.4.2;

contract Checker {
    string[] public validCodes;

    constructor() {
        validCodes = ['12345', 'asddfg', '324faer4', '3qferwfa', 'aaaa', 'vdvds', 'ccc'];
    }

    function check (string _code) public returns(bool) {
        for (uint i=0; i<validCodes.length; i++) {
            if(_code == validCodes[i])
                return true;
        }
        return false;
    }
}