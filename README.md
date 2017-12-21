# santander-customer-satisfaction-using-advance-R-programing
1.Kaggle Santander Customer 

This project was created by Caio Fernandes Moreno, student at the faculty of statistics at UCM - Complutense University of Madrid - Universidad Complutense de Madrid.
The main purpose of this academic project is to learn data mining techniques, statistics, machine learning, R, SAS, data preparation, etc.
Neuronal Networks and Genetic Algorithms / Redes Neuronales y Algoritmos Genéticos
Master degree in Data Mining and Business Intelligence
Kaggle Competition dates:
Started: 7:43 pm, Wednesday 2 March 2016 UTC
Ended: 11:59 pm, Monday 2 May 2016 UTC (61 total days)

Competition link:
https://www.kaggle.com/c/santander-customer-satisfaction


2. The problem

Which customers are happy customers?
From frontline support teams to C-suites, customer satisfaction is a key measure of success. Unhappy customers don't stick around. What's more, unhappy customers rarely voice their dissatisfaction before leaving.
Santander Bank is asking Kagglers to help them identify dissatisfied customers early in their relationship. Doing so would allow Santander to take proactive steps to improve a customer's happiness before it's too late.
In this competition, you'll work with hundreds of anonymized features to predict if a customer is satisfied or dissatisfied with their banking experience.

3. Evaluation and Submission File

Evaluation
Submissions are evaluated on area under the ROC curve between the predicted probability and the observed target.
Submission File
For each ID in the test set, you must predict a probability for the TARGET variable. The file should contain a header and have the following format:
ID,TARGET
2,0
5,0
6,0
etc.

4. Dataset

The dataset provided by Santander Bank is anonymized and contains 371 variables (all continuous variables).
A continuous variable is a variable that has an infinite number of possible values. In other words, any value is possible for the variable. A continuous variable is the opposite of a discrete variable, which can only take on a certain number of values.Sep 11, 2013
The TARGET column is the variable to predict. It equals 1 (one) for unsatisfied customers and 0 for satisfied customers.
The Kaggle Competition Objective is to predict who are satisfied and unsatisfied clients.
Numbers of observations (Row number):
•	Train: 76020 rows
•	Test: 75818 rows
Number of 1s (train): 3008 (3.95%) (Imbalanced Dataset Problem)
Variables:
•	34 variables with one single value; (Action: Delete all of them)
•	100 variables with two unique values; (binary variables)
•	157 variables with values between 3 y 101 unique values; (categorical variables)
•	80 variables has more than 101 distinct values; (continuous variables)
Files:	
•	train.csv - with TARGET variable
•	test.csv - without TARGET variable


