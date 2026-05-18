# Stablecoin Liquidity Monitor

On-chain analytics dashboard tracking stablecoin liquidity, transfer activity, whale concentration, and capital flows across blockchain ecosystems.

## Overview

This project analyzes stablecoin activity using real on-chain ERC-20 transfer data from Ethereum and Layer 2 ecosystems.

The dashboard focuses on:

- Monthly stablecoin transfer volume
- Cross-chain liquidity activity
- USDC holder concentration
- CEX vs on-chain flow classification

## Dashboard

Dune Dashboard:
https://dune.com/higorweb3/stablecoin-liquidity-monitor

## Metrics Tracked

### 1. Monthly Stablecoin Transfer Volume

Tracks monthly USDC and USDT transfer volume on Ethereum using ERC-20 transfer events.

### 2. Stablecoin Volume by Chain

Compares stablecoin transfer activity across:

- Ethereum
- Arbitrum
- Base

### 3. Top USDC Holders — Ethereum

Ranks the largest estimated USDC holders using net transfer balance calculations.

### 4. USDC Flow Classification

Classifies stablecoin flows into:

- CEX inflows
- CEX outflows
- Other on-chain activity

## Stack

- Dune Analytics
- SQL
- Python
- Pandas
- Matplotlib
- FPDF2

## Repository Structure

```bash
stablecoin-liquidity-monitor/
│
├── queries/
├── scripts/
├── data/
├── reports/
│
├── README.md
├── requirements.txt
├── .env.example
└── .gitignore
```

## Queries

### Monthly Stablecoin Volume

- `queries/01_monthly_stablecoin_volume.sql`

### Volume by Chain

- `queries/02_volume_by_chain.sql`

### Top USDC Holders

- `queries/03_top_usdc_holders.sql`

### USDC Flow Classification

- `queries/04_usdc_flow_classification.sql`

## Future Improvements

- Add Polygon and Optimism support
- Add automated Dune API ingestion
- Generate automated PDF reports
- Track additional stablecoins
- Add whale wallet labeling

## Author

Higor Fernando

- GitHub: https://github.com/higorfernandohf0-lgtm
- Dune: https://dune.com/higorweb3