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

Estimate the following models 

 〖gross_profit〗_it=α_it+β_it 〖sgna〗_it+δ_it 〖R1〗_it+ϵ_it    (1)
  α_it=〖γα〗_(it-1)+ϑ_it                                                             (2)
  β_it=〖ρβ〗_(it-1)+θ〖current_asset〗_(it-1)+μ_it                   (3)
  
Where, i=id in the data; t=fyear (you will need to convert them to number; i.e., 1, 2, 3, 4…. Where 1 means t=1); 
t-1 represents values at t-1 (for example, for id=1, t=1983; t+1=1984; t+2=1985 and so on; now if we are looking for values of current assets at t-1 as of 1986(=t), it will be 25; if we are looking at values of revenue at t-1 as of 1990 (=t), revenue=412 (see the data for clarification)). Values of revenue, current assets and sgna are given in the data.  α_it is the intercept that varies with id and time and it also varies with respect to its values in t-1. β_it is the slope of sgna; it varies with id and time and is a function of its own value at t-1 and current asset at t-1. 

Requirement -
	We need values for β_it for each id and t. We will need to report the mean value of the coefficient and graph the mean values 		aggregated at the company level over time.
	We need the code for all three equations estimated jointly (please put the comments on each step you do). If you use any 		assumption/constrains, please note them along with the comment. 
