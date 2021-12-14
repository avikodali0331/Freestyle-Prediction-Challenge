# Freestyle Prediction Challenge
Predicting the grades in a dataset without using any ML methods. 

This was a prediction challenge on Kaggle for my Data 101 course in Fall 2021, where the task was to predict grades without using any machine learning methods in R. This meant I had to find patterns in the data by graphing, plotting, and subsetting the data. This is the link for the Kaggle competition:  https://www.kaggle.com/c/prediction-challenge-1-2021/overview. I have provided the training data and my R code for this challenge in this repository.

My first step in this challenge was to look at the score distribution for passing and failing using a box plot.

![freestylepredictionfigure1](https://user-images.githubusercontent.com/46624536/146082815-949726b0-7a9d-467b-a78a-615a930a61e6.png)

Clearly, there is a lot of overlap between the distribution of scores for passing and failing. Therefore, we cannot solely use the score for each student to predict their grade. So I decided to look at the other attributes in the data. 

The first attribute I looked at was the student's major and how that affected the student's grades. To do this I made a mosaic plot.

![freestylepredictionmosaicmajor](https://user-images.githubusercontent.com/46624536/146086775-b021c985-e8f6-4b65-95fe-4a09e4438cc0.png)

The distribution of the grades for each of the majors has some interesting insights. CS majors have a higher number of fails, while Stat and Political Science have a higher number of passes. Therefore, I thought it would be a good idea to look at each major and its attributes specifically. 

So I subset the data by major, and then looked at how different attributes affected the grades for each major. First I looked at the distribution of scores for passing and failing by major. 

![image](https://user-images.githubusercontent.com/46624536/146091055-c2cd2b01-6ae3-4f1d-b797-8aa18b380a4d.png)

Within each major, there is still a lot of overlap between the distribution of the scores for the grades. However, there is less overlap in certain majors, such as Communication and CS, which can be useful for my prediction algorithm. 

I then looked at the distribution of attendance for passing and failing through some boxplots. 

![image](https://user-images.githubusercontent.com/46624536/146091110-366c3899-38cc-40f4-86d0-78a8a43991f8.png)

The distribution of attendance for pass and fail for each of the majors is relatively the same. Therefore, I decided it would be a better idea to not look too much at attendance in my prediction algorithm.

I then looked at how seniority and grades were related for each major by making some mosaic plots. 

![image](https://user-images.githubusercontent.com/46624536/146091160-f44581e7-ebb7-4ea0-9f50-384d0fa56e39.png)

The distribution of pass and fail for each seniority in each major has some interesting information. Specifically, the CS mosaic plot shows that as seniority
increases, more students fail than pass. This was important information for my prediction algorithm. 

Next, I looked at how the frequency of asking questions and one's grades by major using mosaic plots. 

![image](https://user-images.githubusercontent.com/46624536/146091300-cbeb7550-cc4e-452e-b931-8b8c783099c3.png)

The distribution of pass and fail for each frequency of asking questions in each major also has some interesting information. Specifically, the Political Science mosaic plot shows that as always asking questions is very effective for passing, as most students that asked a lot of questions passed.

Finally, I looked at how the frequency of texting during class and grades were related by major. 

![image](https://user-images.githubusercontent.com/46624536/146090437-8987a91e-5421-4bdc-bb59-b9b21a8d0c84.png)

The distribution of pass and fail for each frequency of texting in each major also has some interesting information. For communication majors, always texting has a slightly higher number of students passing. For stat majors, rarely texting has a slightly higher number of students passing.

Based on the insights from the previous plots, as well as further investigation, this is my resulting prediction algorithm. The error from my training data for this algorithm is 15.9%. When cross-validating with testing subsets, I found that the algorithm had around the same amount of error, plus or minus 1 percent.

![image](https://user-images.githubusercontent.com/46624536/146090736-396fa5a7-e2b1-4737-a46f-bf5584043832.png)

My prediction algorithm ended up being 83.8% accurate in the final competition, which was slightly less than I expected. However, I still placed 9th out of 134 in this competition. 

