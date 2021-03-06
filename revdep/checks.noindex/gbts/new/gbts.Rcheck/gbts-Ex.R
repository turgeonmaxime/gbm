pkgname <- "gbts"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
library('gbts')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
base::assign(".old_wd", base::getwd(), pos = 'CheckExEnv')
cleanEx()
nameEx("comperf")
### * comperf

flush(stderr()); flush(stdout())

### Name: comperf
### Title: Compute model performance
### Aliases: comperf

### ** Examples

y = c(0, 1, 0, 1, 1, 1)
yhat = c(0.5, 0.9, 0.2, 0.7, 0.6,  0.4)
comperf(y, yhat, pfmc = "auc")
# 0.875

y = 1:10
yhat = c(1:5 - 0.1, 6:10 + 0.1)
comperf(y, yhat, pfmc = "mse")
# 0.01




cleanEx()
nameEx("gbts")
### * gbts

flush(stderr()); flush(stdout())

### Name: gbts
### Title: Hyperparameter Search for Gradient Boosted Trees
### Aliases: gbts gbts-package

### ** Examples

## Not run: 
##D # Binary classification
##D 
##D # Load German credit data
##D data(german_credit)
##D train <- german_credit$train
##D test <- german_credit$test
##D target_idx <- german_credit$target_idx
##D pred_idx <- german_credit$pred_idx
##D 
##D # Train a GBT model with optimization on AUC
##D model <- gbts(train[, pred_idx], train[, target_idx], nitr = 200, pfmc = "auc")
##D 
##D # Predict on test data
##D yhat_test <- predict(model, test[, pred_idx])
##D 
##D # Compute AUC on test data
##D comperf(test[, target_idx], yhat_test, pfmc = "auc")
##D 
##D 
##D # Regression
##D 
##D # Load Boston housing data
##D data(boston_housing)
##D train <- boston_housing$train
##D test <- boston_housing$test
##D target_idx <- boston_housing$target_idx
##D pred_idx <- boston_housing$pred_idx
##D 
##D # Train a GBT model with optimization on MSE
##D model <- gbts(train[, pred_idx], train[, target_idx], nitr = 200, pfmc = "mse")
##D 
##D # Predict on test data
##D yhat_test <- predict(model, test[, pred_idx])
##D 
##D # Compute MSE on test data
##D comperf(test[, target_idx], yhat_test, pfmc = "mse")
## End(Not run)



### * <FOOTER>
###
cleanEx()
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
