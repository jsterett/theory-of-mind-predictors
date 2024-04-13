# **Theory of Mind Predictors**
*Study Summary* 
- This project is motivated by prior research exploring how Theory of Mind performance in early childhood is correlated to executive functioning and later achievement. It is also motivated by the previous literature focusing on the child themselves by expanding the scope to investigate external inputs in the child's Zip Code and Social Network. This project is in pursuit of Honors distinction in my B.A. in Psychology.
- This study includes behavioral measures, surveys, and government data.
- The dataset includes data based on Scaling Theory of Mind (Wellman & Liu, 2004), parent surveys based on the Child's Social Understanding Scale, the child's age, their zip code's crime and language statistics, and the number of people the child interacts with regularly.

*Dataset*
- Dependent variable: Theory of Mind Performance
- Independent variable: age (months), Zip Code crime rate and language diversity (decimal), social network size (#), school enrollment (1=yes, 0=no)
The only primary input file is a .csv where data from several excel sheets have been combined

*Mock Up Preliminary Analysis*
- Figure 1: histogram displaying the counts of each subject by age (in the actual spreadsheet age is in months) using Column Age and Column Participant
- Figure 2: histogram displaying the counts of each subject by size of social network using Column Participant and Column SNS
- Figure 3: linear regression of Column CSUS_Average by Column ToM_Average
- Figure 4: linear regression of Column Age by Column ToM_Average
- Figure 5: linear regression of Column ToM_Average by Column SNS
I can remove data about zip code for these specific analyses 

*Desired Plots*
1. Correlation plot between ToM_Avg and CSUS_Avg: need to assign objects to variables, add in the aesthetic info, add the line of best fit, change the dot colors, label the axes with full titles (Scaling Theory of Mind Score Average vs. Child Social Understanding Scale Score Average)
2. Correlation plot between ToM_Avg and SNS: need to assign objects to variables, add in the aesthetic info, add the line of best fit, change the dot colors, label the axes with full titles (Scaling Theory of Mind Score Average vs. Social Network Size)
