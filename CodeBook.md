# Data collected from the accelerometers from the Samsung Galaxy S smartphone

## Raw data
The raw data contains 561 variable measures, including both time and frequencies 
measures. Each variable is measured for a specific subject involved in a specific activity for a total of 10299 observations. 

According to the experiment authors:

> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The raw data has been downloaded from [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) on February 2, 2015.

## Tidy data
The raw data has been processed applying the following steps:

1. The training and the test sets has been merged to create one data set.
2. The column containing the measurement of means or a standard deviations has been
extracted. Variable containing mean(), std(), or meanFreq() has been included. 
Variables that use the mean to calculate other measures has been excluded 
(i.e. angle(tBodyAccJerkMean),gravityMean)).
3. The labels of the new dataset has been renamed according to their original names.
4. The data extracted in step 3 has been aggregated by both subjects and activities 
in order to have a single record for each subject and activity containing the 
average of data included in the original set.
5. Data processed according to the previous steps is exported in the tidy_data.txt file.

### Format
A data frame with 180 observations on 81 variables.

### Variable details
variableName                    |type      |description                                                                              |values                               |
|:-------------------------------|:---------|:----------------------------------------------------------------------------------------|:-----------------------------------------|
|subjectId                       |integer   |Id of the subject who collected data                           |1..30                                     |
|activity                        |character |Activity in which the subject has been involved                           |LAYING<br>SITTING<br>STANDING<br>WALKING<br>WALKING_DOWNSTAIRS<br>WALKING_UPSTAIRS<br>                  |
|tBodyAcc.mean...X               |numeric   |Average of the means of the measured BodyAcc times on the X axys                         |0.22159824394..0.3014610196               |
|tBodyAcc.mean...Y               |numeric   |Average of the means of the measured BodyAcc times on the Y axys                         |-0.0405139534294..-0.00130828765170213    |
|tBodyAcc.mean...Z               |numeric   |Average of the means of the measured BodyAcc times on the Z axys                         |-0.152513899520833..-0.07537846886        |
|tGravityAcc.mean...X            |numeric   |Average of the means of the measured GravityAcc times on the X axys                      |-0.680043155060241..0.974508732           |
|tGravityAcc.mean...Y            |numeric   |Average of the means of the measured GravityAcc times on the Y axys                      |-0.479894842941176..0.956593814210526     |
|tGravityAcc.mean...Z            |numeric   |Average of the means of the measured GravityAcc times on the Z axys                      |-0.49508872037037..0.9578730416           |
|tBodyAccJerk.mean...X           |numeric   |Average of the means of the measured BodyAccJerk times on the X axys                     |0.0426880986186441..0.130193043809524     |
|tBodyAccJerk.mean...Y           |numeric   |Average of the means of the measured BodyAccJerk times on the Y axys                     |-0.0386872111282051..0.056818586275       |
|tBodyAccJerk.mean...Z           |numeric   |Average of the means of the measured BodyAccJerk times on the Z axys                     |-0.0674583919268293..0.0380533591627451   |
|tBodyGyro.mean...X              |numeric   |Average of the means of the measured BodyGyro times on the X axys                        |-0.205775427307692..0.19270447595122      |
|tBodyGyro.mean...Y              |numeric   |Average of the means of the measured BodyGyro times on the Y axys                        |-0.204205356087805..0.0274707556666667    |
|tBodyGyro.mean...Z              |numeric   |Average of the means of the measured BodyGyro times on the Z axys                        |-0.0724546025804878..0.179102058245614    |
|tBodyGyroJerk.mean...X          |numeric   |Average of the means of the measured BodyGyroJerk times on the X axys                    |-0.157212539189362..-0.0220916265065217   |
|tBodyGyroJerk.mean...Y          |numeric   |Average of the means of the measured BodyGyroJerk times on the Y axys                    |-0.0768089915604167..-0.0132022768074468  |
|tBodyGyroJerk.mean...Z          |numeric   |Average of the means of the measured BodyGyroJerk times on the Z axys                    |-0.0924998531372549..-0.00694066389361702 |
|tBodyAccMag.mean..              |numeric   |Average of the means of the measured BodyAccMag times                                    |-0.986493196666667..0.644604325128205     |
|tGravityAccMag.mean..           |numeric   |Average of the means of the measured GravityAccMag times                                 |-0.986493196666667..0.644604325128205     |
|tBodyAccJerkMag.mean..          |numeric   |Average of the means of the measured BodyAccJerkMag times                                |-0.99281471515625..0.434490400974359      |
|tBodyGyroMag.mean..             |numeric   |Average of the means of the measured BodyGyroMag times                                   |-0.980740846769231..0.418004608615385     |
|tBodyGyroJerkMag.mean..         |numeric   |Average of the means of the measured BodyGyroJerkMag times                               |-0.997322526811594..0.0875816618205128    |
|fBodyAcc.mean...X               |numeric   |Average of the means of the measured BodyAcc frequencies on the X axys                   |-0.995249932641509..0.537012022051282     |
|fBodyAcc.mean...Y               |numeric   |Average of the means of the measured BodyAcc frequencies on the Y axys                   |-0.989034304057971..0.524187686888889     |
|fBodyAcc.mean...Z               |numeric   |Average of the means of the measured BodyAcc frequencies on the Z axys                   |-0.989473926666667..0.280735952206667     |
|fBodyAcc.meanFreq...X           |numeric   |Average of the means of the measured BodyAcc frequencies on the X axys                   |-0.635913046346154..0.159123629063636     |
|fBodyAcc.meanFreq...Y           |numeric   |Average of the means of the measured BodyAcc frequencies on the Y axys                   |-0.379518455061538..0.466528231788462     |
|fBodyAcc.meanFreq...Z           |numeric   |Average of the means of the measured BodyAcc frequencies on the Z axys                   |-0.520114793584906..0.402532553395833     |
|fBodyAccJerk.mean...X           |numeric   |Average of the means of the measured BodyAccJerk frequencies on the X axys               |-0.994630797358491..0.474317256051282     |
|fBodyAccJerk.mean...Y           |numeric   |Average of the means of the measured BodyAccJerk frequencies on the Y axys               |-0.989398823913043..0.276716853307692     |
|fBodyAccJerk.mean...Z           |numeric   |Average of the means of the measured BodyAccJerk frequencies on the Z axys               |-0.992018447826087..0.157775692377778     |
|fBodyAccJerk.meanFreq...X       |numeric   |Average of the means of the measured BodyAccJerk frequencies on the X axys               |-0.576044001875..0.331449281481482        |
|fBodyAccJerk.meanFreq...Y       |numeric   |Average of the means of the measured BodyAccJerk frequencies on the Y axys               |-0.601971415384615..0.195677336307692     |
|fBodyAccJerk.meanFreq...Z       |numeric   |Average of the means of the measured BodyAccJerk frequencies on the Z axys               |-0.62755547372549..0.230107945944444      |
|fBodyGyro.mean...X              |numeric   |Average of the means of the measured BodyGyro frequencies on the X axys                  |-0.99312260884058..0.474962448333333      |
|fBodyGyro.mean...Y              |numeric   |Average of the means of the measured BodyGyro frequencies on the Y axys                  |-0.994025488297872..0.328817010088889     |
|fBodyGyro.mean...Z              |numeric   |Average of the means of the measured BodyGyro frequencies on the Z axys                  |-0.985957788..0.492414379822222           |
|fBodyGyro.meanFreq...X          |numeric   |Average of the means of the measured BodyGyro frequencies on the X axys                  |-0.395770150677419..0.249209411510602     |
|fBodyGyro.meanFreq...Y          |numeric   |Average of the means of the measured BodyGyro frequencies on the Y axys                  |-0.666814815306122..0.273141323315789     |
|fBodyGyro.meanFreq...Z          |numeric   |Average of the means of the measured BodyGyro frequencies on the Z axys                  |-0.507490866734694..0.3770740968          |
|fBodyAccMag.mean..              |numeric   |Average of the means of the measured BodyAccMag frequencies                              |-0.986800645362319..0.586637550769231     |
|fBodyAccMag.meanFreq..          |numeric   |Average of the means of the measured BodyAccMag frequencies                              |-0.312338030213846..0.435846931652174     |
|fBodyBodyAccJerkMag.mean..      |numeric   |Average of the means of the measured BodyBodyAccJerkMag frequencies                      |-0.993998275797101..0.538404846128205     |
|fBodyBodyAccJerkMag.meanFreq..  |numeric   |Average of the means of the measured BodyBodyAccJerkMag frequencies                      |-0.125210388757581..0.488088499666667     |
|fBodyBodyGyroMag.mean..         |numeric   |Average of the means of the measured BodyBodyGyroMag frequencies                         |-0.986535242105263..0.203979764835897     |
|fBodyBodyGyroMag.meanFreq..     |numeric   |Average of the means of the measured BodyBodyGyroMag frequencies                         |-0.456638670923077..0.409521611525424     |
|fBodyBodyGyroJerkMag.mean..     |numeric   |Average of the means of the measured BodyBodyGyroJerkMag frequencies                     |-0.997617389275362..0.146618569064407     |
|fBodyBodyGyroJerkMag.meanFreq.. |numeric   |Average of the means of the measured BodyBodyGyroJerkMag frequencies                     |-0.182923596577778..0.426301679855072     |
|tBodyAcc.std...X                |numeric   |Average of the standard deviations of the measured BodyAcc times on the X axys           |-0.996068635384615..0.626917070512821     |
|tBodyAcc.std...Y                |numeric   |Average of the standard deviations of the measured BodyAcc times on the Y axys           |-0.990240946666667..0.616937015333333     |
|tBodyAcc.std...Z                |numeric   |Average of the standard deviations of the measured BodyAcc times on the Z axys           |-0.987658662307692..0.609017879074074     |
|tGravityAcc.std...X             |numeric   |Average of the standard deviations of the measured GravityAcc times on the X axys        |-0.996764227384615..-0.829554947808219    |
|tGravityAcc.std...Y             |numeric   |Average of the standard deviations of the measured GravityAcc times on the Y axys        |-0.99424764884058..-0.643578361424658     |
|tGravityAcc.std...Z             |numeric   |Average of the standard deviations of the measured GravityAcc times on the Z axys        |-0.990957249538462..-0.610161166287671    |
|tBodyAccJerk.std...X            |numeric   |Average of the standard deviations of the measured BodyAccJerk times on the X axys       |-0.994604542264151..0.544273037307692     |
|tBodyAccJerk.std...Y            |numeric   |Average of the standard deviations of the measured BodyAccJerk times on the Y axys       |-0.989513565652174..0.355306716915385     |
|tBodyAccJerk.std...Z            |numeric   |Average of the standard deviations of the measured BodyAccJerk times on the Z axys       |-0.993288313333333..0.0310157077775926    |
|tBodyGyro.std...X               |numeric   |Average of the standard deviations of the measured BodyGyro times on the X axys          |-0.994276591304348..0.267657219333333     |
|tBodyGyro.std...Y               |numeric   |Average of the standard deviations of the measured BodyGyro times on the Y axys          |-0.994210471914894..0.476518714444444     |
|tBodyGyro.std...Z               |numeric   |Average of the standard deviations of the measured BodyGyro times on the Z axys          |-0.985538363333333..0.564875818162963     |
|tBodyGyroJerk.std...X           |numeric   |Average of the standard deviations of the measured BodyGyroJerk times on the X axys      |-0.99654254057971..0.179148649684615      |
|tBodyGyroJerk.std...Y           |numeric   |Average of the standard deviations of the measured BodyGyroJerk times on the Y axys      |-0.997081575652174..0.295945926186441     |
|tBodyGyroJerk.std...Z           |numeric   |Average of the standard deviations of the measured BodyGyroJerk times on the Z axys      |-0.995380794637681..0.193206498960417     |
|tBodyAccMag.std..               |numeric   |Average of the standard deviations of the measured BodyAccMag times                      |-0.986464542615385..0.428405922622222     |
|tGravityAccMag.std..            |numeric   |Average of the standard deviations of the measured GravityAccMag times                   |-0.986464542615385..0.428405922622222     |
|tBodyAccJerkMag.std..           |numeric   |Average of the standard deviations of the measured BodyAccJerkMag times                  |-0.994646916811594..0.450612065720513     |
|tBodyGyroMag.std..              |numeric   |Average of the standard deviations of the measured BodyGyroMag times                     |-0.981372675614035..0.299975979851852     |
|tBodyGyroJerkMag.std..          |numeric   |Average of the standard deviations of the measured BodyGyroJerkMag times                 |-0.997666071594203..0.250173204117966     |
|fBodyAcc.std...X                |numeric   |Average of the standard deviations of the measured BodyAcc frequencies on the X axys     |-0.996604570307692..0.658506543333333     |
|fBodyAcc.std...Y                |numeric   |Average of the standard deviations of the measured BodyAcc frequencies on the Y axys     |-0.990680395362319..0.560191344           |
|fBodyAcc.std...Z                |numeric   |Average of the standard deviations of the measured BodyAcc frequencies on the Z axys     |-0.987224804307692..0.687124163703704     |
|fBodyAccJerk.std...X            |numeric   |Average of the standard deviations of the measured BodyAccJerk frequencies on the X axys |-0.995073759245283..0.476803887476923     |
|fBodyAccJerk.std...Y            |numeric   |Average of the standard deviations of the measured BodyAccJerk frequencies on the Y axys |-0.990468082753623..0.349771285415897     |
|fBodyAccJerk.std...Z            |numeric   |Average of the standard deviations of the measured BodyAccJerk frequencies on the Z axys |-0.993107759855072..-0.00623647528983051  |
|fBodyGyro.std...X               |numeric   |Average of the standard deviations of the measured BodyGyro frequencies on the X axys    |-0.994652185217391..0.196613286661538     |
|fBodyGyro.std...Y               |numeric   |Average of the standard deviations of the measured BodyGyro frequencies on the Y axys    |-0.994353086595745..0.646233637037037     |
|fBodyGyro.std...Z               |numeric   |Average of the standard deviations of the measured BodyGyro frequencies on the Z axys    |-0.986725274871795..0.522454216314815     |
|fBodyAccMag.std..               |numeric   |Average of the standard deviations of the measured BodyAccMag frequencies                |-0.987648484461539..0.178684580868889     |
|fBodyBodyAccJerkMag.std..       |numeric   |Average of the standard deviations of the measured BodyBodyAccJerkMag frequencies        |-0.994366667681159..0.316346415348718     |
|fBodyBodyGyroMag.std..          |numeric   |Average of the standard deviations of the measured BodyBodyGyroMag frequencies           |-0.981468841692308..0.236659662496296     |
|fBodyBodyGyroJerkMag.std..      |numeric   |Average of the standard deviations of the measured BodyBodyGyroJerkMag frequencies       |-0.99758523057971..0.287834616098305      |