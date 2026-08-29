# P1 - Portfolio At Risk | Home Credit 

## Business Question
Which loan product is riskiest for the bank?

## Data Used
application_train.csv - 307,511 loans, column TARGET = 1 if defaulted

## Key Query
See /sql/p1_portfolio_at_risk.sql

## Results (Screenshot below)
- Cash Loans: ~91% of loans, highest risk
- Revolving Loans: ~9% of loans, lower risk

## Business Recommendation
Tighten approval for Cash Loans where AMT_CREDIT > 10 * AMT_INCOME_TOTAL.

## Tools: SQL, SQLite, Excel for visualization

![Result](result.png)




