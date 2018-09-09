// Copyright 2015 The go-ethereum Authors
// This file is part of the go-ethereum library.
//
// The go-ethereum library is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// The go-ethereum library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public License
// along with the go-ethereum library. If not, see <http://www.gnu.org/licenses/>.

package params 

// MainnetBootnodes are the enode URLs of the P2P bootstrap nodes running on
// the main ContractNet network.
var MainnetBootnodes = []string{
	// ContractNet Go Bootnodes
	"enode://5a7a576c8d1abef35b905541131db3edde0574743300c9d3ceefdd27cfc8fad9e375a0ec0b975221cedd63ae969b75ad3e1e6f8d911bbbd5325f458f9e3bc6cd@41.185.71.234:30380",
	"enode://dd79830e28270ac0c597fbb1680a05aef82450d69fd3459489faf63c9c467cbf21fc0d9a4b3cab2bf873ebc76268cc775e8e4322643cc72e467e1426185b4790@41.185.97.96:30380",

}

// TestnetBootnodes are the enode URLs of the P2P bootstrap nodes running on the
// ContractNet test network.
var TestnetBootnodes = []string{
	"enode://81b11410a96e0ea6ecc927f7714a2c256c13e200bc73d087ad120e5a3fc3e1e098760c6fae3dcd7a3c393e49c205e636bacfc10adf6581672f6d3a66e2442248@45.77.7.41:30380",
	"enode://0595ec507bb779873703f516072b37d07f3305271da3d9585ada3b1734535635eac50cffd8c9a413b87a77ede5f49af391a08ca9348d027fda74c38f1ea5ec91@108.61.188.12:30380",
	"enode://8cb060312b4667ed6a0f61dd6cc0cd5d39e70c17429cd5e8ca480fcd7caf72f1b9c92884ce1f8e06e84a7ed1580ba302df0e95ec2ce99f727297bd2787ed8149@45.76.90.144:30380",
}

// DiscoveryV5Bootnodes are the enode URLs of the P2P bootstrap nodes for the
// experimental RLPx v5 topic-discovery network.
var DiscoveryV5Bootnodes = []string{}
