SELECT NAME_CONTRACT_TYPE as product_branch,
COUNT(*) AS total_loans,
SUM(CASE WHEN TARGET=1 THEN 1 ELSE 0 END) AS defaulted_loans,
ROUND(100.0*SUM(CASE WHEN TARGET=1 THEN 1 ELSE 0 END)/COUNT(*), 2) AS default_rate_pct,
SUM(CASE WHEN TARGET=1 THEN AMT_CREDIT ELSE 0 END) AS _total_defaulted_amount,
SUM(AMT_CREDIT) AS total_portfolio_amount,
ROUND(100.0*SUM(CASE WHEN TARGET=1 THEN AMT_CREDIT ELSE 0 END)/SUM(AMT_CREDIT), 2) AS portfolio_at_risk_pct
FROM application_train
GROUP BY NAME_CONTRACT_TYPE
ORDER BY portfolio_at_risk_pct DESC
