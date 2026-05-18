SELECT
  DATE_TRUNC('month', evt_block_time) AS month,

  CASE
    WHEN contract_address = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48 THEN 'USDC'
    WHEN contract_address = 0xdac17f958d2ee523a2206206994597c13d831ec7 THEN 'USDT'
  END AS stablecoin,

  SUM(value / 1e6) AS total_volume

FROM erc20_ethereum.evt_Transfer

WHERE contract_address IN (
  0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48,
  0xdac17f958d2ee523a2206206994597c13d831ec7
)

AND evt_block_time >= NOW() - INTERVAL '24' month

GROUP BY 1, 2
ORDER BY 1, 2;