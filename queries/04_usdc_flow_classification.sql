WITH labeled_flows AS (
  SELECT
    evt_block_time,
    value / 1e6 AS amount,

    CASE
      WHEN "to" IN (
        0x28c6c06298d514db089934071355e5743bf21d60,
        0x21a31ee1afc51d94c2efccaa2092ad1028285549
      ) THEN 'CEX Inflow'

      WHEN "from" IN (
        0x28c6c06298d514db089934071355e5743bf21d60,
        0x21a31ee1afc51d94c2efccaa2092ad1028285549
      ) THEN 'CEX Outflow'

      WHEN "to" IN (
        0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9
      ) THEN 'DeFi Flow'

      ELSE 'Other'
    END AS flow_type

  FROM erc20_ethereum.evt_Transfer

  WHERE contract_address = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48
    AND evt_block_time >= NOW() - INTERVAL '12' month
)

SELECT
  flow_type,
  SUM(amount) AS total_volume
FROM labeled_flows
GROUP BY 1
ORDER BY total_volume DESC;