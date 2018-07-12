# UCI_HAR_Analysis

Data Analytics Tools and Techniques >> DA 6233

This repository contains HW4 from Data Analytics Tools and Techniques >> DA 6233 >> with Professor Joey Campbell, PhD.

HW1 was data cleaning an manipulation of the UCI_HAR Data set, which is measuring smart phone movements according to several conditions. The data set is found at >> http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones >> This project is data cleaning and manipulation.

The Actions performed in this script/manipulation >>

Loading in the >> X_test, X_train, y_test, y_train, features(which will become our column headers), activity_labels, uploading the internal signals from the test and train (9 each) from the folder >> and eventually subject_train and subject_test files. Combining the files for two final data sets (steps 4 and 5) >> step4: final, step5: final_sum_o_data. Subsetting the features, selecting only features recorded with either mean or standard deviations.  Creating final_sum_o_data (in step 5) which is a filter of final >> by subject then activity_label >> then a mean of the remaining columns

The files include:

Getting_Cleaning_Data_assignment.pdf >> Information and insructions for the assignment;
run_analysis.R >> R code used to transform the dataset;
tidydata.csv >> csv of the final dataset;
final_sum_o_data.txt >> The dataset in text file;
data_dctonary.txt >> A Dictonary of all the variables from final and final_some_o_data;

The Data Dictonary :
FULL DATA SET'data.frame':	10299 obs. of  70 variables:
 $ actlabelnum             : int  1 1 1 1 1 1 1 1 ..._
 $ subjectid               : int  7 5 6 23 7 7 11 6 ..._
 $ dataset                 : Factor w/ 2 levels "TEST","TRAIN": 2 2 2 2 2 2 2 2 ..._
 $ tbodyaccmeanx           : num  0.302 0.343 0.27 0.268 ..._
 $ tbodyaccmeany           : num  -0.02688 -0.00343 0.01091 -0.01273 ..._
 $ tbodyaccmeanz           : num  -0.0958 -0.1015 -0.0749 -0.0937 ..._
 $ tbodyaccstdx            : num  -0.38 -0.201 -0.337 -0.384 ..._
 $ tbodyaccstdy            : num  -0.191 0.133 0.146 -0.204 ..._
 $ tbodyaccstdz            : num  0.341 -0.318 -0.446 0.148 ..._
 $ tgravityaccmeanx        : num  0.902 0.965 0.96 0.944 ..._
 $ tgravityaccmeany        : num  -0.137 -0.145 -0.214 -0.159 ..._
 $ tgravityaccmeanz        : num  -0.3428 0.0285 0.0505 -0.1425 ..._
 $ tgravityaccstdx         : num  -0.953 -0.984 -0.965 -0.981 ..._
 $ tgravityaccstdy         : num  -0.937 -0.953 -0.939 -0.973 ..._
 $ tgravityaccstdz         : num  -0.921 -0.99 -0.946 -0.966 ..._
 $ tbodyaccjerkmeanx       : num  0.1505 -0.1351 0.1262 -0.0358 ..._
 $ tbodyaccjerkmeany       : num  -0.2391 -0.0637 0.2083 -0.0136 ..._
 $ tbodyaccjerkmeanz       : num  -0.1533 -0.2631 0.0773 0.2511 ..._
 $ tbodyaccjerkstdx        : num  -0.472 -0.197 -0.159 -0.333 ..._
 $ tbodyaccjerkstdy        : num  -0.1607 -0.0446 0.0551 -0.2088 ..._
 $ tbodyaccjerkstdz        : num  -0.0633 -0.4402 -0.4775 -0.0501 ..._
 $ tbodygyromeanx          : num  0.2139 -0.0277 -0.0484 -0.0117 ..._
 $ tbodygyromeany          : num  -0.049 -0.1253 -0.1036 -0.0135 ..._
 $ tbodygyromeanz          : num  -0.2453 0.1229 0.0869 0.1568 ..._
 $ tbodygyrostdx           : num  -0.512 -0.448 -0.407 -0.501 ..._
 $ tbodygyrostdy           : num  -0.254 -0.394 -0.208 0.178 ..._
 $ tbodygyrostdz           : num  -0.404 -0.311 -0.288 -0.305 ..._
 $ tbodygyrojerkmeanx      : num  -0.0634 0.0756 0.047 -0.1203 ..._
 $ tbodygyrojerkmeany      : num  0.03158 -0.05686 -0.09651 -0.00423 ..._
 $ tbodygyrojerkmeanz      : num  -0.0112 0.14377 0.00215 -0.18785 ..._
 $ tbodygyrojerkstdx       : num  -0.228 -0.3 -0.148 -0.411 ..._
 $ tbodygyrojerkstdy       : num  -0.293 -0.454 -0.211 0.173 ..._
 $ tbodygyrojerkstdz       : num  -0.56075 -0.09672 -0.00331 -0.44637 ..._
 $ tbodyaccmagmean         : num  -0.0919 -0.0604 -0.1786 -0.1654 ..._
 $ tbodyaccmagstd          : num  -0.219 -0.318 -0.331 -0.25 ..._
 $ tgravityaccmagmean      : num  -0.0919 -0.0604 -0.1786 -0.1654 ..._
 $ tgravityaccmagstd       : num  -0.219 -0.318 -0.331 -0.25 ..._
 $ tbodyaccjerkmagmean     : num  -0.221 -0.177 -0.154 -0.165 ..._
 $ tbodyaccjerkmagstd      : num  -0.0879 -0.1895 -0.1146 -0.0714 ..._
 $ tbodygyromagmean        : num  -0.2319 -0.2911 -0.2321 -0.0934 ..._
 $ tbodygyromagstd         : num  -0.359 -0.457 -0.169 0.095 ..._
 $ tbodygyrojerkmagmean    : num  -0.3526 -0.3462 -0.1846 -0.0862 ..._
 $ tbodygyrojerkmagstd     : num  -0.26 -0.432 -0.175 0.135 ..._
 $ fbodyaccmeanx           : num  -0.426 -0.18 -0.229 -0.337 ..._
 $ fbodyaccmeany           : num  -0.0972 0.0852 0.1118 -0.1718 ..._
 $ fbodyaccmeanz           : num  0.1846 -0.3 -0.4013 0.0634 ..._
 $ fbodyaccstdx            : num  -0.363 -0.21 -0.384 -0.403 ..._
 $ fbodyaccstdy            : num  -0.2983 0.0866 0.0919 -0.272 ..._
 $ fbodyaccstdz            : num  0.319 -0.385 -0.52 0.104 ..._
 $ fbodyaccjerkmeanx       : num  -0.49 -0.2 -0.174 -0.353 ..._
 $ fbodyaccjerkmeany       : num  -0.189 -0.1399 -0.0781 -0.2802 ..._
 $ fbodyaccjerkmeanz       : num  0.0147 -0.3993 -0.4145 -0.0667 ..._
 $ fbodyaccjerkstdx        : num  -0.5 -0.269 -0.219 -0.372 ..._
 $ fbodyaccjerkstdy        : num  -0.18651 -0.00372 0.12855 -0.18274 ..._
 $ fbodyaccjerkstdz        : num  -0.1381 -0.4783 -0.5398 -0.0346 ..._
 $ fbodygyromeanx          : num  -0.321 -0.311 -0.164 -0.368 ..._
 $ fbodygyromeany          : num  -0.201 -0.414 -0.185 0.127 ..._
 $ fbodygyromeanz          : num  -0.4485 -0.157 -0.0698 -0.2908 ..._
 $ fbodygyrostdx           : num  -0.574 -0.491 -0.487 -0.544 ..._
 $ fbodygyrostdy           : num  -0.294 -0.387 -0.229 0.201 ..._
 $ fbodygyrostdz           : num  -0.445 -0.433 -0.441 -0.373 ..._
 $ fbodyaccmagmean         : num  -0.224 -0.196 -0.213 -0.135 ..._
 $ fbodyaccmagstd          : num  -0.338 -0.505 -0.512 -0.44 ..._
 $ fbodybodyaccjerkmagmean : num  -0.1081 -0.1625 -0.0958 -0.0753 ..._
 $ fbodybodyaccjerkmagstd  : num  -0.0685 -0.2309 -0.139 -0.0728 ..._
 $ fbodybodygyromagmean    : num  -0.356 -0.414 -0.149 0.202 ..._
 $ fbodybodygyromagstd     : num  -0.474 -0.589 -0.331 -0.192 ..._
 $ fbodybodygyrojerkmagmean: num  -0.2935 -0.5085 -0.2354 0.0615 ..._
 $ fbodybodygyrojerkmagstd : num  -0.269 -0.382 -0.158 0.149 ..._
 $ activitylabel           : Factor w/ 6 levels "LAYING","SITTING",..: 4 4 4 4 4 4 4 4 ..._


SUMMARIZED DATA SET'data.frame':	180 obs. of  68 variables:
 $ activitylabel           : Factor w/ 6 levels "LAYING","SITTING",..: 4 4 4 4 4 4 4 4 ..._
 $ subjectid               : num  1 2 3 4 5 6 7 8 ..._
 $ tbodyaccmeanx           : num  0.277 0.276 0.276 0.279 ..._
 $ tbodyaccmeany           : num  -0.0174 -0.0186 -0.0172 -0.0148 ..._
 $ tbodyaccmeanz           : num  -0.111 -0.106 -0.113 -0.111 ..._
 $ tbodyaccstdx            : num  -0.284 -0.424 -0.36 -0.441 ..._
 $ tbodyaccstdy            : num  0.1145 -0.0781 -0.0699 -0.0788 ..._
 $ tbodyaccstdz            : num  -0.26 -0.425 -0.387 -0.586 ..._
 $ tgravityaccmeanx        : num  0.935 0.913 0.937 0.964 ..._
 $ tgravityaccmeany        : num  -0.2822 -0.3466 -0.262 -0.0859 ..._
 $ tgravityaccmeanz        : num  -0.0681 0.0847 -0.1381 0.1278 ..._
 $ tgravityaccstdx         : num  -0.977 -0.973 -0.978 -0.984 ..._
 $ tgravityaccstdy         : num  -0.971 -0.972 -0.962 -0.968 ..._
 $ tgravityaccstdz         : num  -0.948 -0.972 -0.952 -0.963 ..._
 $ tbodyaccjerkmeanx       : num  0.074 0.0618 0.0815 0.0784 ..._
 $ tbodyaccjerkmeany       : num  0.02827 0.01825 0.01006 0.00296 ..._
 $ tbodyaccjerkmeanz       : num  -0.004168 0.007895 -0.005623 -0.000768 ..._
 $ tbodyaccjerkstdx        : num  -0.114 -0.278 -0.269 -0.297 ..._
 $ tbodyaccjerkstdy        : num  0.067 -0.0166 -0.045 -0.2212 ..._
 $ tbodyaccjerkstdz        : num  -0.503 -0.586 -0.529 -0.751 ..._
 $ tbodygyromeanx          : num  -0.0418 -0.053 -0.0256 -0.0318 ..._
 $ tbodygyromeany          : num  -0.0695 -0.0482 -0.0779 -0.0727 ..._
 $ tbodygyromeanz          : num  0.0849 0.0828 0.0813 0.0806 ..._
 $ tbodygyrostdx           : num  -0.474 -0.562 -0.572 -0.501 ..._
 $ tbodygyrostdy           : num  -0.0546 -0.5385 -0.5638 -0.6654 ..._
 $ tbodygyrostdz           : num  -0.344 -0.481 -0.477 -0.663 ..._
 $ tbodygyrojerkmeanx      : num  -0.09 -0.0819 -0.0952 -0.1153 ..._
 $ tbodygyrojerkmeany      : num  -0.0398 -0.0538 -0.0388 -0.0393 ..._
 $ tbodygyrojerkmeanz      : num  -0.0461 -0.0515 -0.0504 -0.0551 ..._
 $ tbodygyrojerkstdx       : num  -0.207 -0.39 -0.386 -0.492 ..._
 $ tbodygyrojerkstdy       : num  -0.304 -0.634 -0.639 -0.807 ..._
 $ tbodygyrojerkstdz       : num  -0.404 -0.435 -0.537 -0.64 ..._
 $ tbodyaccmagmean         : num  -0.137 -0.29 -0.255 -0.312 ..._
 $ tbodyaccmagstd          : num  -0.22 -0.423 -0.328 -0.528 ..._
 $ tgravityaccmagmean      : num  -0.137 -0.29 -0.255 -0.312 ..._
 $ tgravityaccmagstd       : num  -0.22 -0.423 -0.328 -0.528 ..._
 $ tbodyaccjerkmagmean     : num  -0.141 -0.281 -0.28 -0.367 ..._
 $ tbodyaccjerkmagstd      : num  -0.0745 -0.1642 -0.1399 -0.3169 ..._
 $ tbodygyromagmean        : num  -0.161 -0.447 -0.466 -0.498 ..._
 $ tbodygyromagstd         : num  -0.187 -0.553 -0.562 -0.553 ..._
 $ tbodygyrojerkmagmean    : num  -0.299 -0.548 -0.566 -0.681 ..._
 $ tbodygyrojerkmagstd     : num  -0.325 -0.558 -0.567 -0.73 ..._
 $ fbodyaccmeanx           : num  -0.203 -0.346 -0.317 -0.427 ..._
 $ fbodyaccmeany           : num  0.0897 -0.0219 -0.0813 -0.1494 ..._
 $ fbodyaccmeanz           : num  -0.332 -0.454 -0.412 -0.631 ..._
 $ fbodyaccstdx            : num  -0.319 -0.458 -0.379 -0.447 ..._
 $ fbodyaccstdy            : num  0.056 -0.169 -0.124 -0.102 ..._
 $ fbodyaccstdz            : num  -0.28 -0.455 -0.423 -0.594 ..._
 $ fbodyaccjerkmeanx       : num  -0.171 -0.305 -0.305 -0.359 ..._
 $ fbodyaccjerkmeany       : num  -0.0352 -0.0788 -0.1405 -0.2796 ..._
 $ fbodyaccjerkmeanz       : num  -0.469 -0.555 -0.514 -0.729 ..._
 $ fbodyaccjerkstdx        : num  -0.134 -0.314 -0.297 -0.297 ..._
 $ fbodyaccjerkstdy        : num  0.10674 -0.01533 -0.00561 -0.2099 ..._
 $ fbodyaccjerkstdz        : num  -0.535 -0.616 -0.544 -0.772 ..._
 $ fbodygyromeanx          : num  -0.339 -0.43 -0.438 -0.373 ..._
 $ fbodygyromeany          : num  -0.103 -0.555 -0.562 -0.688 ..._
 $ fbodygyromeanz          : num  -0.256 -0.397 -0.418 -0.601 ..._
 $ fbodygyrostdx           : num  -0.517 -0.604 -0.615 -0.543 ..._
 $ fbodygyrostdy           : num  -0.0335 -0.533 -0.5689 -0.6547 ..._
 $ fbodygyrostdz           : num  -0.437 -0.56 -0.546 -0.716 ..._
 $ fbodyaccmagmean         : num  -0.129 -0.324 -0.29 -0.451 ..._
 $ fbodyaccmagstd          : num  -0.398 -0.577 -0.456 -0.651 ..._
 $ fbodybodyaccjerkmagmean : num  -0.0571 -0.1691 -0.1868 -0.3186 ..._
 $ fbodybodyaccjerkmagstd  : num  -0.1035 -0.1641 -0.0899 -0.3205 ..._
 $ fbodybodygyromagmean    : num  -0.199 -0.531 -0.57 -0.609 ..._
 $ fbodybodygyromagstd     : num  -0.321 -0.652 -0.633 -0.594 ..._
 $ fbodybodygyrojerkmagmean: num  -0.319 -0.583 -0.608 -0.724 ..._
 $ fbodybodygyrojerkmagstd : num  -0.382 -0.558 -0.549 -0.758 ..._
