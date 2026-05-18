SELECT
    'Ethereum' AS chain,
    SUM(value / 1e6) AS total_volume
FROM erc20_ethereum.evt_Transfer
WHERE contract_address IN (
    0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48,
    0xdac17f958d2ee523a2206206994597c13d831ec7
)

UNION ALL

SELECT
    'Arbitrum' AS chain,
    SUM(value / 1e6) AS total_volume
FROM erc20_arbitrum.evt_Transfer
WHERE contract_address IN (
    0xaf88d065e77c8cc2239327c5edb3a432268e5831,
    0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9
)

UNION ALL

SELECT
    'Base' AS chain,
    SUM(value / 1e6) AS total_volume
FROM erc20_base.evt_Transfer
WHERE contract_address IN (
    0x833589fcd6edb6e08f4c7c32d4f71b54bda02913
);