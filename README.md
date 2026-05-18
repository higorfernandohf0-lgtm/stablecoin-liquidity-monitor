# Stablecoin Liquidity Monitor

On-chain analytics dashboard tracking stablecoin liquidity, transfer activity, whale concentration, and capital flows across blockchain ecosystems.

## Overview

This project analyzes stablecoin activity using real on-chain ERC-20 transfer data from Ethereum and Layer 2 ecosystems.

The dashboard focuses on:

- Monthly stablecoin transfer volume
- Cross-chain liquidity activity
- USDC holder concentration
- CEX vs on-chain flow classification

## Key Insights

- Stablecoin supply grew from ~$50B to ~$300B in 24 months
- USDC and USDT dominate liquidity flows on Ethereum and L2s
- CEX wallets remain the primary on/off ramp for capital movement
- Arbitrum and Base are growing as DeFi stablecoin hubs
- LATAM is one of the fastest-growing regions for stablecoin adoption

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
