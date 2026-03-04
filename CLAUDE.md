# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with
code in this repository.

## Repository Overview

This is a learning repository containing course implementations and notes
organized by topic. Each subdirectory contains independent course materials.

## Running Python Code (MIT 6.006 - Introduction to Algorithms)

Located in `MIT/6.006/`. Each Python file is self-executable with test cases in
the `__main__` block.

```bash
# Run any lecture file directly
python MIT/6.006/lecture-1-introduction-to-algorithms.py
python MIT/6.006/lecture-2-data-structures.py
python MIT/6.006/lecture-3-sorting.py
```

No pytest or test framework is used - tests are inline examples that print
results.

## Running C Code (MIT 6.004 - Computation Structures)

Located in `MIT/6.004-Spring-2017/`. Requires linking math library.

```bash
# Compile and run
gcc MIT/6.004-Spring-2017/01-entropy.c -o entropy -lm
./entropy

gcc MIT/6.004-Spring-2017/01-test-two-complement.c -o two-complement
./two-complement
```

## Solidity Smart Contracts (Chainlink Web3 Tutorial)

Located in `SocialPlatform/Chainlink-Web3-Tutorial/`. Uses Wake compiler (based
on `.vscode/settings.json`).

```bash
# Install dependencies (if Wake is used)
# Wake handles remappings and compilation

# Compile contracts
wake compile SocialPlatform/Chainlink-Web3-Tutorial/2-FundMe-and-ERC20/FundMe.sol
```

- Uses SPDX-License-Identifier: MIT
- Solidity version 0.8.20+
- Chainlink contracts imported via npm remappings

## Code Organization

- **MIT/6.006/**: Algorithm implementations with inline examples, uses `typing`
  module for generics
- **MIT/6.004-Spring-2017/**: C implementations for computer architecture
  concepts
- **SocialPlatform/**: Web3/smart contract learning materials
- **util/**: Shared utilities (linked list, etc.) for Python modules
