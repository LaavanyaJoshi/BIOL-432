
# There are kinear models, generalized linear models, linear mixed effects models, generalized additive models, and generalized additive mixed effects models. All have the basic intercept and beta-esqu coefficient with predictor variables X to calculate Y.
# The linear equation and predict() may be used to predict/generat values of Y.
# An assumption for linear models is a defined distribution (Gaussian, Poisson, Binomial) for residual error.
# Fundamentals of linear models were made before computers, so they work even with sparse data; computation has allowed for new machine learning approaches.
# Machine Learning is a general term - new algorithms for fitting linear regressions, large language models, AI, etc.
    # Gnerally, more comples algorithms need more observations.


# Linear models are generative models, which emphasize prediction (ex. generative AI makes sentences, vidoes, images, etc.)
# ML in bio is usually discriminitive that classifies data into groups.
# ML is supervised or unsupservised based on the type of training data
# Supervised uses a response variable for training. Examples include logistic regression, regression trees. They may train models to predict which patients would get cancer.
# Unsupervised don't use response variables, as structure is desired but there are no prior predictions. Examples include PCA and clustering algorithms. They may try to find if there are different types of cancer patients, but can't distinguish them beforehand, so use unsupervised learning to cluster based on measured traits (ex. gene expression profiles, demography, etc.)
# Prediction and interpretability are important traits for ML: can the model generat new observations for a response variable with predictor variables, and can humans understand it. Complex models like ChatGPT have the black box problem.
# There is also the confusion of a model's prediction, which may be measured with a confusion matrix (ex. chihuahua or muffin). Here it;s crucial to idetnfiy the number of true/false positives/negatives.


# Bias and variance are also important for ML.
# Bias is the deviation of an estimation to the true value due to systematic issues in an experiment.
# Variance is the spread of values around a mean
# Models with higher biased are usually simpler and don't have higher-order predictors; however, it's also important to avoid over-fitting models with too many predictors.
# Models may b penalized with too many predictors, similar to Likelihood Ratio Test or Akaike Information Criterion
# Models with higher variance are more sensitive to new data, and models with higher-order predictors are usually more sensitive.
# Complex models usually have lower bias and higher variance


# When prepapring models, one may use a Training Dataset to fit/train the model, and the Validation Dataset to test/validate the model.

# Cross-validation may be used to minimize bias and variance.
# The algorithm involves: removing at least 1 observation (n), fitting the model on the reminaing data, putting n back and taking away another n point(s), repeating this, and finding the average.
# If n = 1, thta is Leave-one-out cross-validation (LOOCV)
# A k-fold cross validation splits data into k groups (different from AIC where k = number of predictors).
# Cross-validation isn't a substitue for data splitting and both should be done.


# The number of predictors should be less than the number of observations.
# However, the reverse is often true for bio datasets (ex. gene exp. for tons of RNA transcripts measured in a few dozen indiviuals)
# While there are unsupervised machine learning models to fix this, it's still ideal to have the reverse.
# Feature selection to choose a subset of predictors should be carefully done. It may be done by applying independent linear models for each feature and looking at their p-values.
# Dimensionality refers to number of features, and dimension reduction methods are good for mutliple feature correlations.
#Unsupervised multivariate methods such as PCA are good for dimension reduction.


# Scaling of variables may be done for ML to ensure they have similar means and variances.
# Generally, one only uses scaled variables, UNLESS they want to incorporate the difference in mean and variance in features.
# Ex. do a gene expression analysis by scaling every gene to have the same mean and variance and then do dimension reduction; this is done as genes often have different expression levels.
# Several different approaches: subtract mean from observation and divide by SD, or divide by interquartile amount - use the quartile() function; or subtract max from observation and divide by range, etc.
# The normalize() in R may be used to scale columns in a data-frame.











