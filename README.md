# Decentralized Prediction Market

A blockchain-based prediction market platform that allows users to create events, place bets on outcomes, and earn rewards for accurate predictions in a fully decentralized environment.

## Overview

This decentralized prediction market leverages blockchain technology and smart contracts to create a transparent, censorship-resistant platform for predicting real-world events. Users can create markets, stake tokens on outcomes, and earn rewards based on prediction accuracy.

## Core Components

### Event Creation Contract

The Event Creation Contract manages the lifecycle of predictable events on the platform.

**Key Features:**
- Market creation interface for any user
- Event parameters definition (description, possible outcomes, resolution date)
- Event categorization system
- Market validity checks
- Event resolution criteria specification
- Event modification and cancellation policies
- Funding requirements for event creation

### Betting Contract

The Betting Contract handles user predictions and stake management.

**Key Features:**
- Token staking on predicted outcomes
- Dynamic odds calculation based on current stakes
- Position management (increase, decrease, or close positions)
- Liquidity pool management
- Automated market making algorithms
- Fee management system
- Escrow mechanism for staked funds

### Oracle Contract

The Oracle Contract verifies and reports the outcomes of events.

**Key Features:**
- Decentralized oracle network integration
- Multiple verification sources
- Dispute resolution mechanism
- Verification time window management
- Oracle staking and rewards
- Slashing conditions for dishonest reporting
- Historical outcome data repository

### Reward Distribution Contract

The Reward Distribution Contract manages payouts to successful predictors.

**Key Features:**
- Automatic reward calculation
- Token distribution to winners
- Partial reward distribution for partial correctness
- Fee distribution to platform stakeholders
- Reward claim process
- Unclaimed rewards management
- Dispute resolution for contested distributions

## Technical Architecture

The platform is built on a decentralized infrastructure with these key technical components:

- Smart Contracts: Solidity contracts on Ethereum (or compatible EVM chain)
- Decentralized Storage: IPFS for storing event details and market data
- Frontend: Web3-enabled dApp for user interaction
- Price Feeds: Chainlink or similar oracle networks for external data
- Governance: DAO structure for platform parameter adjustments and dispute resolution
- Token Economics: Native utility token for platform operations and governance

## Getting Started

### Prerequisites

- MetaMask or other Web3 wallet
- ETH or native tokens for gas fees
- Platform tokens for participation
- Basic understanding of DeFi and blockchain transactions

### Installation

1. Clone the repository
   ```
   git clone https://github.com/yourusername/decentralized-prediction-market.git
   cd decentralized-prediction-market
   ```

2. Install dependencies
   ```
   npm install
   ```

3. Compile smart contracts
   ```
   npx hardhat compile
   ```

4. Deploy to testnet
   ```
   npx hardhat run scripts/deploy.js --network goerli
   ```

5. Start the frontend application
   ```
   npm run dev
   ```

## Usage

### Creating a Prediction Market

1. Connect your wallet to the platform
2. Navigate to "Create Market" section
3. Define the event parameters (question, possible outcomes, resolution time)
4. Set the initial liquidity pool
5. Pay the creation fee
6. Submit for deployment

### Placing Predictions

1. Browse available markets
2. Select a market to participate in
3. Choose the outcome you predict
4. Determine your stake amount
5. Confirm the transaction
6. Monitor your position in "My Predictions"

### Claiming Rewards

1. After event resolution by oracles
2. Navigate to "My Rewards" section
3. View resolved markets with winning positions
4. Claim rewards with a single transaction
5. Rewards are transferred to your connected wallet

## Tokenomics

- **Platform Token**: Used for governance, fee reduction, and staking
- **Transaction Fees**: Small percentage on market creation and trading
- **Oracle Rewards**: Compensation for accurate and timely reporting
- **Governance Rights**: Token holders can vote on protocol upgrades and parameters

## Development Roadmap

- **Phase 1**: Core smart contract development and testing
- **Phase 2**: Frontend development and testnet deployment
- **Phase 3**: Oracle network integration and security audits
- **Phase 4**: Mainnet launch with limited categories
- **Phase 5**: Governance token launch and DAO implementation
- **Phase 6**: Advanced features (conditional markets, futures markets)

## Security Considerations

- All smart contracts undergo multiple independent security audits
- Formal verification of critical contract functions
- Bug bounty program for responsible disclosure
- Rate limiting and circuit breakers for unusual activities
- Timelocks on major contract upgrades
- Insurance fund for black swan events

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Contributing

Contributions are welcome! Please check out our contribution guidelines in CONTRIBUTING.md before submitting PRs.
