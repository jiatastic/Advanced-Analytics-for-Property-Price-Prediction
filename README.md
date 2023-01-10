# India-Real-Estate-Market-Prediction

Thank you for my classmates Yu Yi and Chengyu Hong working on this project with me.

We benefit a lot from @ABHINAVJHANWAR https://www.kaggle.com/code/abhinavjhanwar/house-price-prediction-r2-score-94#Looking-at-Outlier public notebook, especially his ways on engineering features and removing the outliers. Thank you very much!

This dataset was used for group project in the intro to dataming class. We tried to implement various machine learning models, including lasso regression, Knn, DecisionTree, random tree and stacking tecnique.

However, one minor change was my professor asked to try binary predictions instead of predicting values. Therefore,my team did some transformations on this dataset, which we set a budget level = 55(in_lacs). If the price properties are above the budget line, it means we cannot afford.

We considered us as property investors, which we didn't know the property price in advance, so we can apply data science approach to predict whether we are capable to bid on this property based on other features provided.

In addition, we create an interactive map of properties using Leaflet package in R. The spatial data was found on Geodatabase at UT Austin online website. The data was based on second-level administrative divisions in 2015. Therefore, there were some minior differences from our dataset; however, it still provide us a comprehensive view of the distribution of properties across India.

