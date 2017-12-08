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

import (
	"math/big"

	"github.com/ContractNetLabs/go-ContractNet/common"
)

var (
	TestNetGenesisHash = common.HexToHash("0x41941023680923e0fe4d74a34bdac8141f2540e3ae90623718e47d66d1ca4a2d") // Testnet genesis hash to enforce below configs on
	MainNetGenesisHash = common.HexToHash("0x5e12c356e2784188ad26587c739e7b69197f1bde246256188717f60e0b5acc06") // Mainnet genesis hash to enforce below configs on

	TestNetHomesteadBlock = big.NewInt(0) // Testnet homestead block
	MainNetHomesteadBlock = big.NewInt(100) // Mainnet homestead block

	TestNetHomesteadGasRepriceBlock = big.NewInt(0) // Testnet gas reprice block
	MainNetHomesteadGasRepriceBlock = big.NewInt(110) // Mainnet gas reprice block

	TestNetHomesteadGasRepriceHash = common.HexToHash("0x41941023680923e0fe4d74a34bdac8141f2540e3ae90623718e47d66d1ca4a2d") // Testnet gas reprice block hash (used by fast sync)
	MainNetHomesteadGasRepriceHash = common.HexToHash("0xb12879a4865daf663d02161934099449507b2e632f2b8d0238359a963e524fd7") // Mainnet gas reprice block hash (used by fast sync)

	TestNetSpuriousDragon = big.NewInt(10)
	MainNetSpuriousDragon = big.NewInt(120)

	TestNetChainID = big.NewInt(9) // Test net default chain ID
	MainNetChainID = big.NewInt(8) // main net default chain ID
)
