---
title: "CodeBook"
author: "ramya"
date: "Sunday, November 23, 2014"
output: html_document
---
This is the code book for the tidy data set present in the file 'TidyData.txt'. 
This data has been obtained from merging and manipulating data available from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

The script to manipulate data is - run_analysis.R


###Descriptive activities names used in the Tidy data set.
There are six acctivitesfor which the measurements are obtained, the activities are the following.

```r
unique(newset$ActivityName)
```

```
## [1] LAYING             SITTING            STANDING          
## [4] WALKING            WALKING_DOWNSTAIRS WALKING_UPSTAIRS  
## 6 Levels: LAYING SITTING STANDING WALKING ... WALKING_UPSTAIRS
```

###Descriptive names/labels for the variables (columns in the tidy data set) 
The training and test data are combined to form tidy data. 
The Subject column indicates the participants, each participant is marked as Subject x where x is a numeric indicating the participant id. 
The ActivityName column indicates the activity consideredfor that row. 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
Various features are considered and for each feature the mean value and the standard deviation are calculated, for the three X, Y, Z axis.Following are the list of features considered,
TimeBodyAccelerometer
TimeGravityAccelerometer
TimeBodyAccelerometerJerk
TimeBodyGyroscope
TimeBodyGyroscopeJerk
TimeBodyAccelerometerMagnitude
TimeBodyGyroscopeMagnitude
TimeBodyGyroscopeJerkMagnitude
FrequencyBodyAccelerometer
FrequencyBodyAccelerometerJerk
FrequencyBodyGyroscope
FrequencyBodyAccelerometerMagnitude
FrequencyBodyBodyAccelerometerJerkMagnitude
FrequencyBodyBodyGyroscopeMagnitude
FrequencyBodyBodyGyroscopeJerkMagnitude

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm.Finally a Fast Fourier Transform (FFT) was applied to some of these signals.

More details about the features can be found at - http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


Below is the list of all columns present in the tidy data

```r
names(newset)
```

```
##  [1] "Subject"                                                 
##  [2] "ActivityName"                                            
##  [3] "TimeBodyAccelerometer-MeanValue-X"                       
##  [4] "TimeBodyAccelerometer-MeanValue-Y"                       
##  [5] "TimeBodyAccelerometer-MeanValue-Z"                       
##  [6] "TimeBodyAccelerometer-StdDeviation-X"                    
##  [7] "TimeBodyAccelerometer-StdDeviation-Y"                    
##  [8] "TimeBodyAccelerometer-StdDeviation-Z"                    
##  [9] "TimeGravityAccelerometer-MeanValue-X"                    
## [10] "TimeGravityAccelerometer-MeanValue-Y"                    
## [11] "TimeGravityAccelerometer-MeanValue-Z"                    
## [12] "TimeGravityAccelerometer-StdDeviation-X"                 
## [13] "TimeGravityAccelerometer-StdDeviation-Y"                 
## [14] "TimeGravityAccelerometer-StdDeviation-Z"                 
## [15] "TimeBodyAccelerometerJerk-MeanValue-X"                   
## [16] "TimeBodyAccelerometerJerk-MeanValue-Y"                   
## [17] "TimeBodyAccelerometerJerk-MeanValue-Z"                   
## [18] "TimeBodyAccelerometerJerk-StdDeviation-X"                
## [19] "TimeBodyAccelerometerJerk-StdDeviation-Y"                
## [20] "TimeBodyAccelerometerJerk-StdDeviation-Z"                
## [21] "TimeBodyGyroscope-MeanValue-X"                           
## [22] "TimeBodyGyroscope-MeanValue-Y"                           
## [23] "TimeBodyGyroscope-MeanValue-Z"                           
## [24] "TimeBodyGyroscope-StdDeviation-X"                        
## [25] "TimeBodyGyroscope-StdDeviation-Y"                        
## [26] "TimeBodyGyroscope-StdDeviation-Z"                        
## [27] "TimeBodyGyroscopeJerk-MeanValue-X"                       
## [28] "TimeBodyGyroscopeJerk-MeanValue-Y"                       
## [29] "TimeBodyGyroscopeJerk-MeanValue-Z"                       
## [30] "TimeBodyGyroscopeJerk-StdDeviation-X"                    
## [31] "TimeBodyGyroscopeJerk-StdDeviation-Y"                    
## [32] "TimeBodyGyroscopeJerk-StdDeviation-Z"                    
## [33] "TimeBodyAccelerometerMagnitude-MeanValue"                
## [34] "TimeBodyAccelerometerMagnitude-StdDeviation"             
## [35] "TimeGravityAccelerometerMagnitude-MeanValue"             
## [36] "TimeGravityAccelerometerMagnitude-StdDeviation"          
## [37] "TimeBodyAccelerometerJerkMagnitude-MeanValue"            
## [38] "TimeBodyAccelerometerJerkMagnitude-StdDeviation"         
## [39] "TimeBodyGyroscopeMagnitude-MeanValue"                    
## [40] "TimeBodyGyroscopeMagnitude-StdDeviation"                 
## [41] "TimeBodyGyroscopeJerkMagnitude-MeanValue"                
## [42] "TimeBodyGyroscopeJerkMagnitude-StdDeviation"             
## [43] "FrequencyBodyAccelerometer-MeanValue-X"                  
## [44] "FrequencyBodyAccelerometer-MeanValue-Y"                  
## [45] "FrequencyBodyAccelerometer-MeanValue-Z"                  
## [46] "FrequencyBodyAccelerometer-StdDeviation-X"               
## [47] "FrequencyBodyAccelerometer-StdDeviation-Y"               
## [48] "FrequencyBodyAccelerometer-StdDeviation-Z"               
## [49] "FrequencyBodyAccelerometerJerk-MeanValue-X"              
## [50] "FrequencyBodyAccelerometerJerk-MeanValue-Y"              
## [51] "FrequencyBodyAccelerometerJerk-MeanValue-Z"              
## [52] "FrequencyBodyAccelerometerJerk-StdDeviation-X"           
## [53] "FrequencyBodyAccelerometerJerk-StdDeviation-Y"           
## [54] "FrequencyBodyAccelerometerJerk-StdDeviation-Z"           
## [55] "FrequencyBodyGyroscope-MeanValue-X"                      
## [56] "FrequencyBodyGyroscope-MeanValue-Y"                      
## [57] "FrequencyBodyGyroscope-MeanValue-Z"                      
## [58] "FrequencyBodyGyroscope-StdDeviation-X"                   
## [59] "FrequencyBodyGyroscope-StdDeviation-Y"                   
## [60] "FrequencyBodyGyroscope-StdDeviation-Z"                   
## [61] "FrequencyBodyAccelerometerMagnitude-MeanValue"           
## [62] "FrequencyBodyAccelerometerMagnitude-StdDeviation"        
## [63] "FrequencyBodyBodyAccelerometerJerkMagnitude-MeanValue"   
## [64] "FrequencyBodyBodyAccelerometerJerkMagnitude-StdDeviation"
## [65] "FrequencyBodyBodyGyroscopeMagnitude-MeanValue"           
## [66] "FrequencyBodyBodyGyroscopeMagnitude-StdDeviation"        
## [67] "FrequencyBodyBodyGyroscopeJerkMagnitude-MeanValue"       
## [68] "FrequencyBodyBodyGyroscopeJerkMagnitude-StdDeviation"
```

###Summary of the tidy data set

```r
summary(newset)
```

```
##    Subject                      ActivityName
##  Length:180         LAYING            :30   
##  Class :character   SITTING           :30   
##  Mode  :character   STANDING          :30   
##                     WALKING           :30   
##                     WALKING_DOWNSTAIRS:30   
##                     WALKING_UPSTAIRS  :30   
##  TimeBodyAccelerometer-MeanValue-X TimeBodyAccelerometer-MeanValue-Y
##  Min.   :0.2216                    Min.   :-0.040514                
##  1st Qu.:0.2712                    1st Qu.:-0.020022                
##  Median :0.2770                    Median :-0.017262                
##  Mean   :0.2743                    Mean   :-0.017876                
##  3rd Qu.:0.2800                    3rd Qu.:-0.014936                
##  Max.   :0.3015                    Max.   :-0.001308                
##  TimeBodyAccelerometer-MeanValue-Z TimeBodyAccelerometer-StdDeviation-X
##  Min.   :-0.15251                  Min.   :-0.9961                     
##  1st Qu.:-0.11207                  1st Qu.:-0.9799                     
##  Median :-0.10819                  Median :-0.7526                     
##  Mean   :-0.10916                  Mean   :-0.5577                     
##  3rd Qu.:-0.10443                  3rd Qu.:-0.1984                     
##  Max.   :-0.07538                  Max.   : 0.6269                     
##  TimeBodyAccelerometer-StdDeviation-Y TimeBodyAccelerometer-StdDeviation-Z
##  Min.   :-0.99024                     Min.   :-0.9877                     
##  1st Qu.:-0.94205                     1st Qu.:-0.9498                     
##  Median :-0.50897                     Median :-0.6518                     
##  Mean   :-0.46046                     Mean   :-0.5756                     
##  3rd Qu.:-0.03077                     3rd Qu.:-0.2306                     
##  Max.   : 0.61694                     Max.   : 0.6090                     
##  TimeGravityAccelerometer-MeanValue-X TimeGravityAccelerometer-MeanValue-Y
##  Min.   :-0.6800                      Min.   :-0.47989                    
##  1st Qu.: 0.8376                      1st Qu.:-0.23319                    
##  Median : 0.9208                      Median :-0.12782                    
##  Mean   : 0.6975                      Mean   :-0.01621                    
##  3rd Qu.: 0.9425                      3rd Qu.: 0.08773                    
##  Max.   : 0.9745                      Max.   : 0.95659                    
##  TimeGravityAccelerometer-MeanValue-Z
##  Min.   :-0.49509                    
##  1st Qu.:-0.11726                    
##  Median : 0.02384                    
##  Mean   : 0.07413                    
##  3rd Qu.: 0.14946                    
##  Max.   : 0.95787                    
##  TimeGravityAccelerometer-StdDeviation-X
##  Min.   :-0.9968                        
##  1st Qu.:-0.9825                        
##  Median :-0.9695                        
##  Mean   :-0.9638                        
##  3rd Qu.:-0.9509                        
##  Max.   :-0.8296                        
##  TimeGravityAccelerometer-StdDeviation-Y
##  Min.   :-0.9942                        
##  1st Qu.:-0.9711                        
##  Median :-0.9590                        
##  Mean   :-0.9524                        
##  3rd Qu.:-0.9370                        
##  Max.   :-0.6436                        
##  TimeGravityAccelerometer-StdDeviation-Z
##  Min.   :-0.9910                        
##  1st Qu.:-0.9605                        
##  Median :-0.9450                        
##  Mean   :-0.9364                        
##  3rd Qu.:-0.9180                        
##  Max.   :-0.6102                        
##  TimeBodyAccelerometerJerk-MeanValue-X
##  Min.   :0.04269                      
##  1st Qu.:0.07396                      
##  Median :0.07640                      
##  Mean   :0.07947                      
##  3rd Qu.:0.08330                      
##  Max.   :0.13019                      
##  TimeBodyAccelerometerJerk-MeanValue-Y
##  Min.   :-0.0386872                   
##  1st Qu.: 0.0004664                   
##  Median : 0.0094698                   
##  Mean   : 0.0075652                   
##  3rd Qu.: 0.0134008                   
##  Max.   : 0.0568186                   
##  TimeBodyAccelerometerJerk-MeanValue-Z
##  Min.   :-0.067458                    
##  1st Qu.:-0.010601                    
##  Median :-0.003861                    
##  Mean   :-0.004953                    
##  3rd Qu.: 0.001958                    
##  Max.   : 0.038053                    
##  TimeBodyAccelerometerJerk-StdDeviation-X
##  Min.   :-0.9946                         
##  1st Qu.:-0.9832                         
##  Median :-0.8104                         
##  Mean   :-0.5949                         
##  3rd Qu.:-0.2233                         
##  Max.   : 0.5443                         
##  TimeBodyAccelerometerJerk-StdDeviation-Y
##  Min.   :-0.9895                         
##  1st Qu.:-0.9724                         
##  Median :-0.7756                         
##  Mean   :-0.5654                         
##  3rd Qu.:-0.1483                         
##  Max.   : 0.3553                         
##  TimeBodyAccelerometerJerk-StdDeviation-Z TimeBodyGyroscope-MeanValue-X
##  Min.   :-0.99329                         Min.   :-0.20578             
##  1st Qu.:-0.98266                         1st Qu.:-0.04712             
##  Median :-0.88366                         Median :-0.02871             
##  Mean   :-0.73596                         Mean   :-0.03244             
##  3rd Qu.:-0.51212                         3rd Qu.:-0.01676             
##  Max.   : 0.03102                         Max.   : 0.19270             
##  TimeBodyGyroscope-MeanValue-Y TimeBodyGyroscope-MeanValue-Z
##  Min.   :-0.20421              Min.   :-0.07245             
##  1st Qu.:-0.08955              1st Qu.: 0.07475             
##  Median :-0.07318              Median : 0.08512             
##  Mean   :-0.07426              Mean   : 0.08744             
##  3rd Qu.:-0.06113              3rd Qu.: 0.10177             
##  Max.   : 0.02747              Max.   : 0.17910             
##  TimeBodyGyroscope-StdDeviation-X TimeBodyGyroscope-StdDeviation-Y
##  Min.   :-0.9943                  Min.   :-0.9942                 
##  1st Qu.:-0.9735                  1st Qu.:-0.9629                 
##  Median :-0.7890                  Median :-0.8017                 
##  Mean   :-0.6916                  Mean   :-0.6533                 
##  3rd Qu.:-0.4414                  3rd Qu.:-0.4196                 
##  Max.   : 0.2677                  Max.   : 0.4765                 
##  TimeBodyGyroscope-StdDeviation-Z TimeBodyGyroscopeJerk-MeanValue-X
##  Min.   :-0.9855                  Min.   :-0.15721                 
##  1st Qu.:-0.9609                  1st Qu.:-0.10322                 
##  Median :-0.8010                  Median :-0.09868                 
##  Mean   :-0.6164                  Mean   :-0.09606                 
##  3rd Qu.:-0.3106                  3rd Qu.:-0.09110                 
##  Max.   : 0.5649                  Max.   :-0.02209                 
##  TimeBodyGyroscopeJerk-MeanValue-Y TimeBodyGyroscopeJerk-MeanValue-Z
##  Min.   :-0.07681                  Min.   :-0.092500                
##  1st Qu.:-0.04552                  1st Qu.:-0.061725                
##  Median :-0.04112                  Median :-0.053430                
##  Mean   :-0.04269                  Mean   :-0.054802                
##  3rd Qu.:-0.03842                  3rd Qu.:-0.048985                
##  Max.   :-0.01320                  Max.   :-0.006941                
##  TimeBodyGyroscopeJerk-StdDeviation-X TimeBodyGyroscopeJerk-StdDeviation-Y
##  Min.   :-0.9965                      Min.   :-0.9971                     
##  1st Qu.:-0.9800                      1st Qu.:-0.9832                     
##  Median :-0.8396                      Median :-0.8942                     
##  Mean   :-0.7036                      Mean   :-0.7636                     
##  3rd Qu.:-0.4629                      3rd Qu.:-0.5861                     
##  Max.   : 0.1791                      Max.   : 0.2959                     
##  TimeBodyGyroscopeJerk-StdDeviation-Z
##  Min.   :-0.9954                     
##  1st Qu.:-0.9848                     
##  Median :-0.8610                     
##  Mean   :-0.7096                     
##  3rd Qu.:-0.4741                     
##  Max.   : 0.1932                     
##  TimeBodyAccelerometerMagnitude-MeanValue
##  Min.   :-0.9865                         
##  1st Qu.:-0.9573                         
##  Median :-0.4829                         
##  Mean   :-0.4973                         
##  3rd Qu.:-0.0919                         
##  Max.   : 0.6446                         
##  TimeBodyAccelerometerMagnitude-StdDeviation
##  Min.   :-0.9865                            
##  1st Qu.:-0.9430                            
##  Median :-0.6074                            
##  Mean   :-0.5439                            
##  3rd Qu.:-0.2090                            
##  Max.   : 0.4284                            
##  TimeGravityAccelerometerMagnitude-MeanValue
##  Min.   :-0.9865                            
##  1st Qu.:-0.9573                            
##  Median :-0.4829                            
##  Mean   :-0.4973                            
##  3rd Qu.:-0.0919                            
##  Max.   : 0.6446                            
##  TimeGravityAccelerometerMagnitude-StdDeviation
##  Min.   :-0.9865                               
##  1st Qu.:-0.9430                               
##  Median :-0.6074                               
##  Mean   :-0.5439                               
##  3rd Qu.:-0.2090                               
##  Max.   : 0.4284                               
##  TimeBodyAccelerometerJerkMagnitude-MeanValue
##  Min.   :-0.9928                             
##  1st Qu.:-0.9807                             
##  Median :-0.8168                             
##  Mean   :-0.6079                             
##  3rd Qu.:-0.2456                             
##  Max.   : 0.4345                             
##  TimeBodyAccelerometerJerkMagnitude-StdDeviation
##  Min.   :-0.9946                                
##  1st Qu.:-0.9765                                
##  Median :-0.8014                                
##  Mean   :-0.5842                                
##  3rd Qu.:-0.2173                                
##  Max.   : 0.4506                                
##  TimeBodyGyroscopeMagnitude-MeanValue
##  Min.   :-0.9807                     
##  1st Qu.:-0.9461                     
##  Median :-0.6551                     
##  Mean   :-0.5652                     
##  3rd Qu.:-0.2159                     
##  Max.   : 0.4180                     
##  TimeBodyGyroscopeMagnitude-StdDeviation
##  Min.   :-0.9814                        
##  1st Qu.:-0.9476                        
##  Median :-0.7420                        
##  Mean   :-0.6304                        
##  3rd Qu.:-0.3602                        
##  Max.   : 0.3000                        
##  TimeBodyGyroscopeJerkMagnitude-MeanValue
##  Min.   :-0.99732                        
##  1st Qu.:-0.98515                        
##  Median :-0.86479                        
##  Mean   :-0.73637                        
##  3rd Qu.:-0.51186                        
##  Max.   : 0.08758                        
##  TimeBodyGyroscopeJerkMagnitude-StdDeviation
##  Min.   :-0.9977                            
##  1st Qu.:-0.9805                            
##  Median :-0.8809                            
##  Mean   :-0.7550                            
##  3rd Qu.:-0.5767                            
##  Max.   : 0.2502                            
##  FrequencyBodyAccelerometer-MeanValue-X
##  Min.   :-0.9952                       
##  1st Qu.:-0.9787                       
##  Median :-0.7691                       
##  Mean   :-0.5758                       
##  3rd Qu.:-0.2174                       
##  Max.   : 0.5370                       
##  FrequencyBodyAccelerometer-MeanValue-Y
##  Min.   :-0.98903                      
##  1st Qu.:-0.95361                      
##  Median :-0.59498                      
##  Mean   :-0.48873                      
##  3rd Qu.:-0.06341                      
##  Max.   : 0.52419                      
##  FrequencyBodyAccelerometer-MeanValue-Z
##  Min.   :-0.9895                       
##  1st Qu.:-0.9619                       
##  Median :-0.7236                       
##  Mean   :-0.6297                       
##  3rd Qu.:-0.3183                       
##  Max.   : 0.2807                       
##  FrequencyBodyAccelerometer-StdDeviation-X
##  Min.   :-0.9966                          
##  1st Qu.:-0.9820                          
##  Median :-0.7470                          
##  Mean   :-0.5522                          
##  3rd Qu.:-0.1966                          
##  Max.   : 0.6585                          
##  FrequencyBodyAccelerometer-StdDeviation-Y
##  Min.   :-0.99068                         
##  1st Qu.:-0.94042                         
##  Median :-0.51338                         
##  Mean   :-0.48148                         
##  3rd Qu.:-0.07913                         
##  Max.   : 0.56019                         
##  FrequencyBodyAccelerometer-StdDeviation-Z
##  Min.   :-0.9872                          
##  1st Qu.:-0.9459                          
##  Median :-0.6441                          
##  Mean   :-0.5824                          
##  3rd Qu.:-0.2655                          
##  Max.   : 0.6871                          
##  FrequencyBodyAccelerometerJerk-MeanValue-X
##  Min.   :-0.9946                           
##  1st Qu.:-0.9828                           
##  Median :-0.8126                           
##  Mean   :-0.6139                           
##  3rd Qu.:-0.2820                           
##  Max.   : 0.4743                           
##  FrequencyBodyAccelerometerJerk-MeanValue-Y
##  Min.   :-0.9894                           
##  1st Qu.:-0.9725                           
##  Median :-0.7817                           
##  Mean   :-0.5882                           
##  3rd Qu.:-0.1963                           
##  Max.   : 0.2767                           
##  FrequencyBodyAccelerometerJerk-MeanValue-Z
##  Min.   :-0.9920                           
##  1st Qu.:-0.9796                           
##  Median :-0.8707                           
##  Mean   :-0.7144                           
##  3rd Qu.:-0.4697                           
##  Max.   : 0.1578                           
##  FrequencyBodyAccelerometerJerk-StdDeviation-X
##  Min.   :-0.9951                              
##  1st Qu.:-0.9847                              
##  Median :-0.8254                              
##  Mean   :-0.6121                              
##  3rd Qu.:-0.2475                              
##  Max.   : 0.4768                              
##  FrequencyBodyAccelerometerJerk-StdDeviation-Y
##  Min.   :-0.9905                              
##  1st Qu.:-0.9737                              
##  Median :-0.7852                              
##  Mean   :-0.5707                              
##  3rd Qu.:-0.1685                              
##  Max.   : 0.3498                              
##  FrequencyBodyAccelerometerJerk-StdDeviation-Z
##  Min.   :-0.993108                            
##  1st Qu.:-0.983747                            
##  Median :-0.895121                            
##  Mean   :-0.756489                            
##  3rd Qu.:-0.543787                            
##  Max.   :-0.006236                            
##  FrequencyBodyGyroscope-MeanValue-X FrequencyBodyGyroscope-MeanValue-Y
##  Min.   :-0.9931                    Min.   :-0.9940                   
##  1st Qu.:-0.9697                    1st Qu.:-0.9700                   
##  Median :-0.7300                    Median :-0.8141                   
##  Mean   :-0.6367                    Mean   :-0.6767                   
##  3rd Qu.:-0.3387                    3rd Qu.:-0.4458                   
##  Max.   : 0.4750                    Max.   : 0.3288                   
##  FrequencyBodyGyroscope-MeanValue-Z FrequencyBodyGyroscope-StdDeviation-X
##  Min.   :-0.9860                    Min.   :-0.9947                      
##  1st Qu.:-0.9624                    1st Qu.:-0.9750                      
##  Median :-0.7909                    Median :-0.8086                      
##  Mean   :-0.6044                    Mean   :-0.7110                      
##  3rd Qu.:-0.2635                    3rd Qu.:-0.4813                      
##  Max.   : 0.4924                    Max.   : 0.1966                      
##  FrequencyBodyGyroscope-StdDeviation-Y
##  Min.   :-0.9944                      
##  1st Qu.:-0.9602                      
##  Median :-0.7964                      
##  Mean   :-0.6454                      
##  3rd Qu.:-0.4154                      
##  Max.   : 0.6462                      
##  FrequencyBodyGyroscope-StdDeviation-Z
##  Min.   :-0.9867                      
##  1st Qu.:-0.9643                      
##  Median :-0.8224                      
##  Mean   :-0.6577                      
##  3rd Qu.:-0.3916                      
##  Max.   : 0.5225                      
##  FrequencyBodyAccelerometerMagnitude-MeanValue
##  Min.   :-0.9868                              
##  1st Qu.:-0.9560                              
##  Median :-0.6703                              
##  Mean   :-0.5365                              
##  3rd Qu.:-0.1622                              
##  Max.   : 0.5866                              
##  FrequencyBodyAccelerometerMagnitude-StdDeviation
##  Min.   :-0.9876                                 
##  1st Qu.:-0.9452                                 
##  Median :-0.6513                                 
##  Mean   :-0.6210                                 
##  3rd Qu.:-0.3654                                 
##  Max.   : 0.1787                                 
##  FrequencyBodyBodyAccelerometerJerkMagnitude-MeanValue
##  Min.   :-0.9940                                      
##  1st Qu.:-0.9770                                      
##  Median :-0.7940                                      
##  Mean   :-0.5756                                      
##  3rd Qu.:-0.1872                                      
##  Max.   : 0.5384                                      
##  FrequencyBodyBodyAccelerometerJerkMagnitude-StdDeviation
##  Min.   :-0.9944                                         
##  1st Qu.:-0.9752                                         
##  Median :-0.8126                                         
##  Mean   :-0.5992                                         
##  3rd Qu.:-0.2668                                         
##  Max.   : 0.3163                                         
##  FrequencyBodyBodyGyroscopeMagnitude-MeanValue
##  Min.   :-0.9865                              
##  1st Qu.:-0.9616                              
##  Median :-0.7657                              
##  Mean   :-0.6671                              
##  3rd Qu.:-0.4087                              
##  Max.   : 0.2040                              
##  FrequencyBodyBodyGyroscopeMagnitude-StdDeviation
##  Min.   :-0.9815                                 
##  1st Qu.:-0.9488                                 
##  Median :-0.7727                                 
##  Mean   :-0.6723                                 
##  3rd Qu.:-0.4277                                 
##  Max.   : 0.2367                                 
##  FrequencyBodyBodyGyroscopeJerkMagnitude-MeanValue
##  Min.   :-0.9976                                  
##  1st Qu.:-0.9813                                  
##  Median :-0.8779                                  
##  Mean   :-0.7564                                  
##  3rd Qu.:-0.5831                                  
##  Max.   : 0.1466                                  
##  FrequencyBodyBodyGyroscopeJerkMagnitude-StdDeviation
##  Min.   :-0.9976                                     
##  1st Qu.:-0.9802                                     
##  Median :-0.8941                                     
##  Mean   :-0.7715                                     
##  3rd Qu.:-0.6081                                     
##  Max.   : 0.2878
```

###Sample of the tidy data set created

```r
head(newset)
```

```
##        Subject       ActivityName TimeBodyAccelerometer-MeanValue-X
## 1   Subject  1             LAYING                         0.2215982
## 31  Subject  1            SITTING                         0.2612376
## 61  Subject  1           STANDING                         0.2789176
## 91  Subject  1            WALKING                         0.2773308
## 121 Subject  1 WALKING_DOWNSTAIRS                         0.2891883
## 151 Subject  1   WALKING_UPSTAIRS                         0.2554617
##     TimeBodyAccelerometer-MeanValue-Y TimeBodyAccelerometer-MeanValue-Z
## 1                        -0.040513953                        -0.1132036
## 31                       -0.001308288                        -0.1045442
## 61                       -0.016137590                        -0.1106018
## 91                       -0.017383819                        -0.1111481
## 121                      -0.009918505                        -0.1075662
## 151                      -0.023953149                        -0.0973020
##     TimeBodyAccelerometer-StdDeviation-X
## 1                            -0.92805647
## 31                           -0.97722901
## 61                           -0.99575990
## 91                           -0.28374026
## 121                           0.03003534
## 151                          -0.35470803
##     TimeBodyAccelerometer-StdDeviation-Y
## 1                           -0.836827406
## 31                          -0.922618642
## 61                          -0.973190056
## 91                           0.114461337
## 121                         -0.031935943
## 151                         -0.002320265
##     TimeBodyAccelerometer-StdDeviation-Z
## 1                            -0.82606140
## 31                           -0.93958629
## 61                           -0.97977588
## 91                           -0.26002790
## 121                          -0.23043421
## 151                          -0.01947924
##     TimeGravityAccelerometer-MeanValue-X
## 1                             -0.2488818
## 31                             0.8315099
## 61                             0.9429520
## 91                             0.9352232
## 121                            0.9318744
## 151                            0.8933511
##     TimeGravityAccelerometer-MeanValue-Y
## 1                              0.7055498
## 31                             0.2044116
## 61                            -0.2729838
## 91                            -0.2821650
## 121                           -0.2666103
## 151                           -0.3621534
##     TimeGravityAccelerometer-MeanValue-Z
## 1                             0.44581772
## 31                            0.33204370
## 61                            0.01349058
## 91                           -0.06810286
## 121                          -0.06211996
## 151                          -0.07540294
##     TimeGravityAccelerometer-StdDeviation-X
## 1                                -0.8968300
## 31                               -0.9684571
## 61                               -0.9937630
## 91                               -0.9766096
## 121                              -0.9505598
## 151                              -0.9563670
##     TimeGravityAccelerometer-StdDeviation-Y
## 1                                -0.9077200
## 31                               -0.9355171
## 61                               -0.9812260
## 91                               -0.9713060
## 121                              -0.9370187
## 151                              -0.9528492
##     TimeGravityAccelerometer-StdDeviation-Z
## 1                                -0.8523663
## 31                               -0.9490409
## 61                               -0.9763241
## 91                               -0.9477172
## 121                              -0.8959397
## 151                              -0.9123794
##     TimeBodyAccelerometerJerk-MeanValue-X
## 1                              0.08108653
## 31                             0.07748252
## 61                             0.07537665
## 91                             0.07404163
## 121                            0.05415532
## 151                            0.10137273
##     TimeBodyAccelerometerJerk-MeanValue-Y
## 1                            0.0038382040
## 31                          -0.0006191028
## 61                           0.0079757309
## 91                           0.0282721096
## 121                          0.0296504490
## 151                          0.0194863076
##     TimeBodyAccelerometerJerk-MeanValue-Z
## 1                             0.010834236
## 31                           -0.003367792
## 61                           -0.003685250
## 91                           -0.004168406
## 121                          -0.010971973
## 151                          -0.045562545
##     TimeBodyAccelerometerJerk-StdDeviation-X
## 1                                -0.95848211
## 31                               -0.98643071
## 61                               -0.99460454
## 91                               -0.11361560
## 121                              -0.01228386
## 151                              -0.44684389
##     TimeBodyAccelerometerJerk-StdDeviation-Y
## 1                                 -0.9241493
## 31                                -0.9813720
## 61                                -0.9856487
## 91                                 0.0670025
## 121                               -0.1016014
## 151                               -0.3782744
##     TimeBodyAccelerometerJerk-StdDeviation-Z TimeBodyGyroscope-MeanValue-X
## 1                                 -0.9548551                   -0.01655309
## 31                                -0.9879108                   -0.04535006
## 61                                -0.9922512                   -0.02398773
## 91                                -0.5026998                   -0.04183096
## 121                               -0.3457350                   -0.03507819
## 151                               -0.7065935                    0.05054938
##     TimeBodyGyroscope-MeanValue-Y TimeBodyGyroscope-MeanValue-Z
## 1                     -0.06448612                    0.14868944
## 31                    -0.09192415                    0.06293138
## 61                    -0.05939722                    0.07480075
## 91                    -0.06953005                    0.08494482
## 121                   -0.09093713                    0.09008501
## 151                   -0.16617002                    0.05835955
##     TimeBodyGyroscope-StdDeviation-X TimeBodyGyroscope-StdDeviation-Y
## 1                         -0.8735439                     -0.951090440
## 31                        -0.9772113                     -0.966473895
## 61                        -0.9871919                     -0.987734440
## 91                        -0.4735355                     -0.054607769
## 121                       -0.4580305                     -0.126349195
## 151                       -0.5448711                      0.004105184
##     TimeBodyGyroscope-StdDeviation-Z TimeBodyGyroscopeJerk-MeanValue-X
## 1                         -0.9082847                       -0.10727095
## 31                        -0.9414259                       -0.09367938
## 61                        -0.9806456                       -0.09960921
## 91                        -0.3442666                       -0.08999754
## 121                       -0.1247025                       -0.07395920
## 151                       -0.5071687                       -0.12223277
##     TimeBodyGyroscopeJerk-MeanValue-Y TimeBodyGyroscopeJerk-MeanValue-Z
## 1                         -0.04151729                       -0.07405012
## 31                        -0.04021181                       -0.04670263
## 61                        -0.04406279                       -0.04895055
## 91                        -0.03984287                       -0.04613093
## 121                       -0.04399028                       -0.02704611
## 151                       -0.04214859                       -0.04071255
##     TimeBodyGyroscopeJerk-StdDeviation-X
## 1                             -0.9186085
## 31                            -0.9917316
## 61                            -0.9929451
## 91                            -0.2074219
## 121                           -0.4870273
## 151                           -0.6147865
##     TimeBodyGyroscopeJerk-StdDeviation-Y
## 1                             -0.9679072
## 31                            -0.9895181
## 61                            -0.9951379
## 91                            -0.3044685
## 121                           -0.2388248
## 151                           -0.6016967
##     TimeBodyGyroscopeJerk-StdDeviation-Z
## 1                             -0.9577902
## 31                            -0.9879358
## 61                            -0.9921085
## 91                            -0.4042555
## 121                           -0.2687615
## 151                           -0.6063320
##     TimeBodyAccelerometerMagnitude-MeanValue
## 1                                -0.84192915
## 31                               -0.94853679
## 61                               -0.98427821
## 91                               -0.13697118
## 121                               0.02718829
## 151                              -0.12992763
##     TimeBodyAccelerometerMagnitude-StdDeviation
## 1                                   -0.79514486
## 31                                  -0.92707842
## 61                                  -0.98194293
## 91                                  -0.21968865
## 121                                  0.01988435
## 151                                 -0.32497093
##     TimeGravityAccelerometerMagnitude-MeanValue
## 1                                   -0.84192915
## 31                                  -0.94853679
## 61                                  -0.98427821
## 91                                  -0.13697118
## 121                                  0.02718829
## 151                                 -0.12992763
##     TimeGravityAccelerometerMagnitude-StdDeviation
## 1                                      -0.79514486
## 31                                     -0.92707842
## 61                                     -0.98194293
## 91                                     -0.21968865
## 121                                     0.01988435
## 151                                    -0.32497093
##     TimeBodyAccelerometerJerkMagnitude-MeanValue
## 1                                    -0.95439626
## 31                                   -0.98736420
## 61                                   -0.99236779
## 91                                   -0.14142881
## 121                                  -0.08944748
## 151                                  -0.46650345
##     TimeBodyAccelerometerJerkMagnitude-StdDeviation
## 1                                       -0.92824563
## 31                                      -0.98412002
## 61                                      -0.99309621
## 91                                      -0.07447175
## 121                                     -0.02578772
## 151                                     -0.47899162
##     TimeBodyGyroscopeMagnitude-MeanValue
## 1                            -0.87475955
## 31                           -0.93089249
## 61                           -0.97649379
## 91                           -0.16097955
## 121                          -0.07574125
## 151                          -0.12673559
##     TimeBodyGyroscopeMagnitude-StdDeviation
## 1                                -0.8190102
## 31                               -0.9345318
## 61                               -0.9786900
## 91                               -0.1869784
## 121                              -0.2257244
## 151                              -0.1486193
##     TimeBodyGyroscopeJerkMagnitude-MeanValue
## 1                                 -0.9634610
## 31                                -0.9919763
## 61                                -0.9949668
## 91                                -0.2987037
## 121                               -0.2954638
## 151                               -0.5948829
##     TimeBodyGyroscopeJerkMagnitude-StdDeviation
## 1                                    -0.9358410
## 31                                   -0.9883087
## 61                                   -0.9947332
## 91                                   -0.3253249
## 121                                  -0.3065106
## 151                                  -0.6485530
##     FrequencyBodyAccelerometer-MeanValue-X
## 1                              -0.93909905
## 31                             -0.97964124
## 61                             -0.99524993
## 91                             -0.20279431
## 121                             0.03822918
## 151                            -0.40432178
##     FrequencyBodyAccelerometer-MeanValue-Y
## 1                             -0.867065205
## 31                            -0.944084550
## 61                            -0.977070848
## 91                             0.089712726
## 121                            0.001549908
## 151                           -0.190976721
##     FrequencyBodyAccelerometer-MeanValue-Z
## 1                               -0.8826669
## 31                              -0.9591849
## 61                              -0.9852971
## 91                              -0.3315601
## 121                             -0.2255745
## 151                             -0.4333497
##     FrequencyBodyAccelerometer-StdDeviation-X
## 1                                 -0.92443743
## 31                                -0.97641231
## 61                                -0.99602835
## 91                                -0.31913472
## 121                                0.02433084
## 151                               -0.33742819
##     FrequencyBodyAccelerometer-StdDeviation-Y
## 1                                 -0.83362556
## 31                                -0.91727501
## 61                                -0.97229310
## 91                                 0.05604001
## 121                               -0.11296374
## 151                                0.02176951
##     FrequencyBodyAccelerometer-StdDeviation-Z
## 1                                 -0.81289156
## 31                                -0.93446956
## 61                                -0.97793726
## 91                                -0.27968675
## 121                               -0.29792789
## 151                                0.08595655
##     FrequencyBodyAccelerometerJerk-MeanValue-X
## 1                                  -0.95707388
## 31                                 -0.98659702
## 61                                 -0.99463080
## 91                                 -0.17054696
## 121                                -0.02766387
## 151                                -0.47987525
##     FrequencyBodyAccelerometerJerk-MeanValue-Y
## 1                                  -0.92246261
## 31                                 -0.98157947
## 61                                 -0.98541870
## 91                                 -0.03522552
## 121                                -0.12866716
## 151                                -0.41344459
##     FrequencyBodyAccelerometerJerk-MeanValue-Z
## 1                                   -0.9480609
## 31                                  -0.9860531
## 61                                  -0.9907522
## 91                                  -0.4689992
## 121                                 -0.2883347
## 151                                 -0.6854744
##     FrequencyBodyAccelerometerJerk-StdDeviation-X
## 1                                      -0.9641607
## 31                                     -0.9874930
## 61                                     -0.9950738
## 91                                     -0.1335866
## 121                                    -0.0863279
## 151                                    -0.4619070
##     FrequencyBodyAccelerometerJerk-StdDeviation-Y
## 1                                      -0.9322179
## 31                                     -0.9825139
## 61                                     -0.9870182
## 91                                      0.1067399
## 121                                    -0.1345800
## 151                                    -0.3817771
##     FrequencyBodyAccelerometerJerk-StdDeviation-Z
## 1                                      -0.9605870
## 31                                     -0.9883392
## 61                                     -0.9923498
## 91                                     -0.5347134
## 121                                    -0.4017215
## 151                                    -0.7260402
##     FrequencyBodyGyroscope-MeanValue-X FrequencyBodyGyroscope-MeanValue-Y
## 1                           -0.8502492                        -0.95219149
## 31                          -0.9761615                        -0.97583859
## 61                          -0.9863868                        -0.98898446
## 91                          -0.3390322                        -0.10305942
## 121                         -0.3524496                        -0.05570225
## 151                         -0.4926117                        -0.31947461
##     FrequencyBodyGyroscope-MeanValue-Z
## 1                          -0.90930272
## 31                         -0.95131554
## 61                         -0.98077312
## 91                         -0.25594094
## 121                        -0.03186943
## 151                        -0.45359721
##     FrequencyBodyGyroscope-StdDeviation-X
## 1                              -0.8822965
## 31                             -0.9779042
## 61                             -0.9874971
## 91                             -0.5166919
## 121                            -0.4954225
## 151                            -0.5658925
##     FrequencyBodyGyroscope-StdDeviation-Y
## 1                             -0.95123205
## 31                            -0.96234504
## 61                            -0.98710773
## 91                            -0.03350816
## 121                           -0.18141473
## 151                            0.15153891
##     FrequencyBodyGyroscope-StdDeviation-Z
## 1                              -0.9165825
## 31                             -0.9439178
## 61                             -0.9823453
## 91                             -0.4365622
## 121                            -0.2384436
## 151                            -0.5717078
##     FrequencyBodyAccelerometerMagnitude-MeanValue
## 1                                     -0.86176765
## 31                                    -0.94778292
## 61                                    -0.98535636
## 91                                    -0.12862345
## 121                                    0.09658453
## 151                                   -0.35239594
##     FrequencyBodyAccelerometerMagnitude-StdDeviation
## 1                                         -0.7983009
## 31                                        -0.9284448
## 61                                        -0.9823138
## 91                                        -0.3980326
## 121                                       -0.1865303
## 151                                       -0.4162601
##     FrequencyBodyBodyAccelerometerJerkMagnitude-MeanValue
## 1                                             -0.93330036
## 31                                            -0.98526213
## 61                                            -0.99254248
## 91                                            -0.05711940
## 121                                            0.02621849
## 151                                           -0.44265216
##     FrequencyBodyBodyAccelerometerJerkMagnitude-StdDeviation
## 1                                                 -0.9218040
## 31                                                -0.9816062
## 61                                                -0.9925360
## 91                                                -0.1034924
## 121                                               -0.1040523
## 151                                               -0.5330599
##     FrequencyBodyBodyGyroscopeMagnitude-MeanValue
## 1                                      -0.8621902
## 31                                     -0.9584356
## 61                                     -0.9846176
## 91                                     -0.1992526
## 121                                    -0.1857203
## 151                                    -0.3259615
##     FrequencyBodyBodyGyroscopeMagnitude-StdDeviation
## 1                                         -0.8243194
## 31                                        -0.9321984
## 61                                        -0.9784661
## 91                                        -0.3210180
## 121                                       -0.3983504
## 151                                       -0.1829855
##     FrequencyBodyBodyGyroscopeJerkMagnitude-MeanValue
## 1                                          -0.9423669
## 31                                         -0.9897975
## 61                                         -0.9948154
## 91                                         -0.3193086
## 121                                        -0.2819634
## 151                                        -0.6346651
##     FrequencyBodyBodyGyroscopeJerkMagnitude-StdDeviation
## 1                                             -0.9326607
## 31                                            -0.9870496
## 61                                            -0.9946711
## 91                                            -0.3816019
## 121                                           -0.3919199
## 151                                           -0.6939305
```
