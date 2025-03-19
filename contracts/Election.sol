// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract Election {
    string[] public electors;
    uint256 public maxVotes;
    uint256 public electionEndTime;
    uint256 public totalVotesCount;
    address public owner;
    bool public isAvailable;

    mapping(address => bool) public userVotes;
    mapping(uint256 => uint256) public numberOfVotes;

    error OnlyOwnerAllowed();
    error ElectorDoesNotExist(uint256 _pickedElector, uint256 _totalElectors);
    error CantVoteTwice();
    error OwnerCantVote();

    constructor(
        string[] memory _electors,
        uint256 _maxVote,
        uint256 _duration
    ) {
        owner = msg.sender;
        maxVotes = _maxVote;
        electors = _electors;
        isAvailable = true;
        electionEndTime = block.timestamp + _duration;
    }

    function vote(uint256 _number) public {
        require(owner != msg.sender, OwnerCantVote());
        require(userVotes[msg.sender] == false, CantVoteTwice());
        require(_number < electors.length, ElectorDoesNotExist(_number, electors.length));
        require(totalVotesCount < maxVotes, "Max Votes reached out");
        require(isAvailable, "Election is closed");
        require(block.timestamp < electionEndTime, "Election has ended");

        userVotes[msg.sender] = true;
        numberOfVotes[_number] += 1;
        totalVotesCount += 1;
    }

    function stopVoting() public {
        require(owner == msg.sender, OnlyOwnerAllowed());
        isAvailable = false;
    }

    function getWinner() public view returns (string memory winner) {
        require(block.timestamp > electionEndTime || !isAvailable, "Election is still ongoing");
        uint256 highestVotes = 0;
        uint256 winnerIndex = 0;
        
        for (uint256 i = 0; i < electors.length; i++) {
            if (numberOfVotes[i] > highestVotes) {
                highestVotes = numberOfVotes[i];
                winnerIndex = i;
            }
        }

        return electors[winnerIndex];
    }
}
