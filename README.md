# Marketing-Spend-Analysis-for-Healthcare-Companies

	
Variable creation -

	Create a quadratic term for SGNA (SQ_SGNA)
	Create growth in profit [(gross profit at t-gross profit at t-1)/ gross profit at t-1].
	Create two additional variable “LAG_SGNA” and “SGNA_MKT”
	Find the lag of SGNA at the company and fyear level.
	Find the moving average of SGNA for each firm for 3 years.
	Covert “private” to type=1, if private=public; else 0.
	Create interaction terms for interaction of SGNA with litigation, numbers of cases, developed, multinational, Australia, 	Belgium, Germany, India, Ireland, Norway, Singapore, Sweden, UK, USA, policy_reform_Australia, policy_reform_Belgium, policy_reform_Germany, policy_reform_India, policy_reform_Ireland, policy_reform_Norway, policy_reform_Singapore, policy_reform_Sweden, policy_reform_UK, policy_reform_USA, gdp per capita growth, life expectancy, mortality, population, Individuals using the Internet, physicians, acquisitions
	
Variable Descriptions -

	Dependent variables (DV): Gross_profit and growth in profit
	Independent Variables: SGNA and SQ_SGNA
	Moderating variables: All that have been created in ‘d’ above. 
	Control Variables: current assets, age, ppe, emp, operating expenses, liabilities, book value
	
Estimate Models -

	Estimate a regression model with SGNA as dependent variable and lag_sgna and sgna_mkt as independent variables. Store the 		residual of the model NAMED AS “R1”.
	Model 1: DV=gross_profit, IV= SGNA and SQ_SGNA; CONTROL= current assets, age, ppe, emp, operating expenses, liabilities, book 		value, R1.
	Model 2: DV=growth in profit, IV= SGNA and SQ_SGNA; CONTROL= current assets, age, ppe, emp, operating expenses, liabilities, 		book value, r1
	Model 3: Estimate a set of models for each interaction effect, for example
	Example 1: DV= gross_profit, IV= SGNA and SQ_SGNA; moderating variables: litigation, interaction between litigation and SGNA; 		CONTROL= current assets, age, ppe, emp, operating expenses, liabilities, book value, r1
	Example 2: DV= gross_profit, IV= SGNA and SQ_SGNA; moderating variables: acquisition, interaction between acquisition and SGNA; 	CONTROL= current assets, age, ppe, emp, operating expenses, liabilities, book value, r1
	Model 4: DV= gross_profit, IV= SGNA and SQ_SGNA; moderating variables: all of them as discussed in A (e) above; CONTROL= current 	assets, age, ppe, emp, operating expenses, liabilities, book value, r1

