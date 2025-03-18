// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

contract StructContract {
	struct UserData {
		string name;
		uint age;
		bool isGay;
	}
	mapping(address => UserData) public usersData;

	function setUserData(string memory _name, uint _age, bool _isGay) public {
		usersData[msg.sender] = UserData({
			name: _name,
			age: _age,
			isGay: _isGay
		});
	}

	UserData public human;

	function setUserData1() public {
		human = UserData("Mike", 26, false);
	}

	function setUserData2() public {
		human = UserData({
			name: "Mike",
			age: 29,
			isGay: false
		});
	}

	function setUserData3() public {
		human.name = "Mike";
		human.age = 25;
		human.isGay = false;
	}
}