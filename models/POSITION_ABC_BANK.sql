SELECT
    *
    , POSITION_VALUE - COST_BASE as UNREALIZED_PROFIT
    , UNREALIZED_PROFIT / COST_BASE as UNREALIZED_PROFIT_PCT
FROM {{ source('abc_bank', 'ABC_BANK_POSITION') }}