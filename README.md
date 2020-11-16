# Education-spendings
This repository contains all the research work and updates regarding spendings in the education sector. 

# Background checks
According to the National Statistical Office (NSO) data analysis, access to higher education in India is much lower among socio-economically backward groups. Such insights from data is possible when we have structured data available. Thus overall spendings data had been collected from government sites in machine readable formats which then filtered out to extract spendings on the education sector. Hence this repository is created to spread more awareness among masses regarding  spendings patterns in the education sector. 

# Introduction
As we are working with the education sector, it becomes very important to define what “Education” means. Since there are records where various education related things are happening under the agriculture sector but these records do not fall under education rather it falls under the agricultural sector, so it becomes very important to figure out the most appropriate definition of “Education”. In order to achieve this, there is intensive research done which includes following steps.

# Step 1
Since it is a huge dataset that we are dealing with, it becomes easy to comprehend data if it is sorted by various features. Thus grouping has been done in order to read data more clearly which will further help in extracting most appropriate keywords which defines the term “Education” very well. 

# Step 2
In the previous filtered dataset, there was exclusion of "demand" column and inclusion of "budget", "voted_charged" and "plan_nonplan". Since we need to identify most appropriate keywords to define "Education", I am including the excluded column ie "demand" and excluding the included columns. 

# Dataset link
https://drive.google.com/file/d/11VUca17h43A6xlA-Ka7IO9D7i6aTIyXH/view?usp=sharing

# Approach taken for EDA
1. First of all, we are finding top 25 highest spending ddo's in the last 5 years.
2. Taking these ddo's one by one and finding further top 10 highest spending ddo descriptions under that particular ddo coe.
3. In this step, we are creating a list containing top 10 highest spending ddo desc and extracting those ddo desc's transactions in whole dataset.
4. Now checking lineplot of each and every ddo desc and keeping the anomalous transactions only.
5. Extracting the transactional records of anomalies.

# Problem Statement
We are trying to find out DDO’s transactions who are not performing well with respect to its own pattern and trend over time. Basically transactions which are not normal. Now this may sound very simple and straightforward but let me break down what is actually happening behind the scenes. 
Now we have various DDO codes under which different descriptions are there for each DDO code. Let us take an example DDO_Code = 200 under which descriptions might be like BEEO Ghumarwin, BEEO Bilaspur,BEEO Bharari and so on. We will break the problem statement into many sub sections i.e Top to bottom approach. We are taking a particular DDO code and taking 10 DDO descriptions under the same ddo code and then we are analysing those ddo descriptions over time. That’s how we come to anomalous transactions of that particular DDO. 

# Method
Step 1: Going to use the “NETPAYMENT” column from the dataset. 
Step 2:  Transform values from this column to an appropriate format which is numbers so that model can understand the inputs. Moreover it overcomes the problem of different scales of values and different meanings. 
Step 3: So, here comes the best moment to ask the question — “How are our models going to detect anomalies?”
Well we should know first what “Normal” means ?
And we should know what is normal deviation and what is “ too much “ deviation ? Because it will help in identifying abnormalities. 
