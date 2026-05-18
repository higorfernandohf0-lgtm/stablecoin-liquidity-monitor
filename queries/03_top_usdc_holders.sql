WITH transfers AS (
  SELECT
    "to" AS wallet,
    value / 1e6 AS amount
  FROM erc20_ethereum.evt_Transfer
  WHERE contract_address = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48

  UNION ALL

  SELECT
    "from" AS wallet,
    -value / 1e6 AS amount
  FROM erc20_ethereum.evt_Transfer
  WHERE contract_address = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48
)

SELECT
  wallet,
  SUM(amount) AS balance
FROM transfers
GROUP BY 1
HAVING SUM(amount) > 0
ORDER BY balance DESC
LIMIT 20;