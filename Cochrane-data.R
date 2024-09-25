install.packages("rmeta")
install.packages("meta")
library(rmeta)
library(meta)
data(cochrane)

str(cochrane)

steroid <- metabin(ev.trt,n.trt, 
                   ev.ctrl,n.ctrl, 
                   studlab=name,
                   data=cochrane,
                   sm="RR")

print(steroid)

plot(steroid)


# Checking the heterogeneity statistics
steroid$Q
steroid$I2
steroid$pval.Q


# Creating a funnel plot to check for publication bias
funnel(steroid)


# Removing the first study and rerunning the meta-analysis
steroid_sensitivity <- update(steroid, subset = -1)
plot(steroid_sensitivity)


print(steroid_sensitivity)


# Example: Assuming the cochrane dataset has a variable 'region' for subgroup analysis
steroid_subgroup <- metabin(ev.trt, n.trt, 
                            ev.ctrl, n.ctrl, 
                            studlab = name, 
                            data = cochrane, 
                            byvar = region,
                            sm = "RR")
plot(steroid_subgroup)


# Example: Meta-regression with a covariate 'year' (study year)
meta_regression <- metareg(steroid, ~ name)
summary(meta_regression)
