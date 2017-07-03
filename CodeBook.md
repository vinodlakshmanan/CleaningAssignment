# Purpose
This document describes the variables present in the output datasets and the transformations applied to the data.

## Transformations applied to variable names
The below transformations have been applied to the original datasets, for making the names more intuitive. The variable does not contain any brackets or commas.

|Original variable content | Transformed variable content |
| --- | --- |
| tBodyAcc | time-body-accelerometer|
| tGravityAcc | time-gravity-accelerometer |
| tBodyGyro | time-body-gyroscope |
| tGravityGyro | time-gravity-gyroscope |
| fBodyAcc | freq-body-accelerometer |
| fBodyBodyAcc | freq-body-accelerometer |
| fGravityAcc | freq-gravity-accelerometer |
| fBodyGyro | freq-body-gyroscope |
| fBodyBodyGyro | freq-gravity-gyroscope |
| Jerk | -jerk |
| Mag | -magnitude |
| Mean | -mean |
| Freq | -frequency |

## DataSet  - tidydata (file - tidydata.csv)
This data contains the final output data which is aggregated by subject and activity. Variable names are listed below

1	subjects  
2	activityname  
3	time-body-accelerometer-mean-X  
4	time-body-accelerometer-mean-Y  
5	time-body-accelerometer-mean-Z  
6	time-body-accelerometer-std-X  
7	time-body-accelerometer-std-Y  
8	time-body-accelerometer-std-Z  
9	time-gravity-accelerometer-mean-X  
10	time-gravity-accelerometer-mean-Y  
11	time-gravity-accelerometer-mean-Z  
12	time-gravity-accelerometer-std-X  
13	time-gravity-accelerometer-std-Y  
14	time-gravity-accelerometer-std-Z  
15	time-body-accelerometer-jerk-mean-X  
16	time-body-accelerometer-jerk-mean-Y  
17	time-body-accelerometer-jerk-mean-Z  
18	time-body-accelerometer-jerk-std-X  
19	time-body-accelerometer-jerk-std-Y  
20	time-body-accelerometer-jerk-std-Z  
21	time-body-gyroscope-mean-X  
22	time-body-gyroscope-mean-Y  
23	time-body-gyroscope-mean-Z  
24	time-body-gyroscope-std-X  
25	time-body-gyroscope-std-Y  
26	time-body-gyroscope-std-Z  
27	time-body-gyroscope-jerk-mean-X  
28	time-body-gyroscope-jerk-mean-Y  
29	time-body-gyroscope-jerk-mean-Z  
30	time-body-gyroscope-jerk-std-X  
31	time-body-gyroscope-jerk-std-Y  
32	time-body-gyroscope-jerk-std-Z  
33	time-body-accelerometer-magnitude-mean  
34	time-body-accelerometer-magnitude-std  
35	time-gravity-accelerometer-magnitude-mean  
36	time-gravity-accelerometer-magnitude-std  
37	time-body-accelerometer-jerk-magnitude-mean  
38	time-body-accelerometer-jerk-magnitude-std  
39	time-body-gyroscope-magnitude-mean  
40	time-body-gyroscope-magnitude-std  
41	time-body-gyroscope-jerk-magnitude-mean  
42	time-body-gyroscope-jerk-magnitude-std  
43	freq-body-accelerometer-mean-X  
44	freq-body-accelerometer-mean-Y  
45	freq-body-accelerometer-mean-Z  
46	freq-body-accelerometer-std-X  
47	freq-body-accelerometer-std-Y  
48	freq-body-accelerometer-std-Z  
49	freq-body-accelerometer-mean-frequency-X  
50	freq-body-accelerometer-mean-frequency-Y  
51	freq-body-accelerometer-mean-frequency-Z  
52	freq-body-accelerometer-jerk-mean-X  
53	freq-body-accelerometer-jerk-mean-Y  
54	freq-body-accelerometer-jerk-mean-Z  
55	freq-body-accelerometer-jerk-std-X  
56	freq-body-accelerometer-jerk-std-Y  
57	freq-body-accelerometer-jerk-std-Z  
58	freq-body-accelerometer-jerk-mean-frequency-X  
59	freq-body-accelerometer-jerk-mean-frequency-Y  
60	freq-body-accelerometer-jerk-mean-frequency-Z  
61	freq-body-gyroscope-mean-X  
62	freq-body-gyroscope-mean-Y  
63	freq-body-gyroscope-mean-Z  
64	freq-body-gyroscope-std-X  
65	freq-body-gyroscope-std-Y  
66	freq-body-gyroscope-std-Z  
67	freq-body-gyroscope-mean-frequency-X  
68	freq-body-gyroscope-mean-frequency-Y  
69	freq-body-gyroscope-mean-frequency-Z  
70	freq-body-accelerometer-magnitude-mean  
71	freq-body-accelerometer-magnitude-std  
72	freq-body-accelerometer-magnitude-mean-frequency  
73	freq-body-accelerometer-jerk-magnitude-mean  
74	freq-body-accelerometer-jerk-magnitude-std  
75	freq-body-accelerometer-jerk-magnitude-mean-frequency  
76	freq-body-gyroscope-magnitude-mean  
77	freq-body-gyroscope-magnitude-std  
78	freq-body-gyroscope-magnitude-mean-frequency  
79	freq-body-gyroscope-jerk-magnitude-mean  
80	freq-body-gyroscope-jerk-magnitude-std  
81	freq-body-gyroscope-jerk-magnitude-mean-frequency  
82	angle-time-body-accelerometer-mean-gravity  
83	angle-time-body-accelerometer-jerk-mean-gravity-mean  
84	angle-time-body-gyroscope-mean-gravity-mean  
85	angle-time-body-gyroscope-jerk-mean-gravity-mean  
86	angle-X-gravity-mean  
87	angle-Y-gravity-mean  
88	angle-Z-gravity-mean  

## DataSet  - fDataTrimmed (file - None)
This data contains the cleaned data which is formed by merging the test and training data, adding activity names and filtering out mean and standard deviation columns. Variable names are listed below

 1 time-body-accelerometer-mean-X                      
 2 time-body-accelerometer-mean-Y                      
 3 time-body-accelerometer-mean-Z                      
 4 time-body-accelerometer-std-X                       
 5 time-body-accelerometer-std-Y                       
 6 time-body-accelerometer-std-Z                       
 7 time-gravity-accelerometer-mean-X                   
 8 time-gravity-accelerometer-mean-Y                   
 9 time-gravity-accelerometer-mean-Z                   
10 time-gravity-accelerometer-std-X                    
11 time-gravity-accelerometer-std-Y                    
12 time-gravity-accelerometer-std-Z                    
13 time-body-accelerometer-jerk-mean-X                 
14 time-body-accelerometer-jerk-mean-Y                 
15 time-body-accelerometer-jerk-mean-Z                 
16 time-body-accelerometer-jerk-std-X                  
17 time-body-accelerometer-jerk-std-Y                  
18 time-body-accelerometer-jerk-std-Z                  
19 time-body-gyroscope-mean-X                          
20 time-body-gyroscope-mean-Y                          
21 time-body-gyroscope-mean-Z                          
22 time-body-gyroscope-std-X                           
23 time-body-gyroscope-std-Y                           
24 time-body-gyroscope-std-Z                           
25 time-body-gyroscope-jerk-mean-X                     
26 time-body-gyroscope-jerk-mean-Y                     
27 time-body-gyroscope-jerk-mean-Z                     
28 time-body-gyroscope-jerk-std-X                      
29 time-body-gyroscope-jerk-std-Y                      
30 time-body-gyroscope-jerk-std-Z                      
31 time-body-accelerometer-magnitude-mean              
32 time-body-accelerometer-magnitude-std               
33 time-gravity-accelerometer-magnitude-mean           
34 time-gravity-accelerometer-magnitude-std            
35 time-body-accelerometer-jerk-magnitude-mean         
36 time-body-accelerometer-jerk-magnitude-std          
37 time-body-gyroscope-magnitude-mean                  
38 time-body-gyroscope-magnitude-std                   
39 time-body-gyroscope-jerk-magnitude-mean             
40 time-body-gyroscope-jerk-magnitude-std              
41 fourier-body-accelerometer-mean-X                   
42 fourier-body-accelerometer-mean-Y                   
43 fourier-body-accelerometer-mean-Z                   
44 fourier-body-accelerometer-std-X                    
45 fourier-body-accelerometer-std-Y                    
46 fourier-body-accelerometer-std-Z                    
47 fourier-body-accelerometer-mean-frequency-X         
48 fourier-body-accelerometer-mean-frequency-Y         
49 fourier-body-accelerometer-mean-frequency-Z         
50 fourier-body-accelerometer-jerk-mean-X              
51 fourier-body-accelerometer-jerk-mean-Y              
52 fourier-body-accelerometer-jerk-mean-Z              
53 fourier-body-accelerometer-jerk-std-X               
54 fourier-body-accelerometer-jerk-std-Y               
55 fourier-body-accelerometer-jerk-std-Z               
56 fourier-body-accelerometer-jerk-mean-frequency-X    
57 fourier-body-accelerometer-jerk-mean-frequency-Y    
58 fourier-body-accelerometer-jerk-mean-frequency-Z    
59 fourier-body-gyroscope-mean-X                       
60 fourier-body-gyroscope-mean-Y                       
61 fourier-body-gyroscope-mean-Z                       
62 fourier-body-gyroscope-std-X                        
63 fourier-body-gyroscope-std-Y                        
64 fourier-body-gyroscope-std-Z                        
65 fourier-body-gyroscope-mean-frequency-X             
66 fourier-body-gyroscope-mean-frequency-Y             
67 fourier-body-gyroscope-mean-frequency-Z             
68 fourier-body-accelerometer-magnitude-mean           
69 fourier-body-accelerometer-magnitude-std            
70 fourier-body-accelerometer-magnitude-mean-frequency 
71 fBodyBodyAcc-jerk-magnitude-mean                    
72 fBodyBodyAcc-jerk-magnitude-std                     
73 fBodyBodyAcc-jerk-magnitude-mean-frequency          
74 fBodyBodyGyro-magnitude-mean                        
75 fBodyBodyGyro-magnitude-std                         
76 fBodyBodyGyro-magnitude-mean-frequency              
77 fBodyBodyGyro-jerk-magnitude-mean                   
78 fBodyBodyGyro-jerk-magnitude-std                    
79 fBodyBodyGyro-jerk-magnitude-mean-frequency         
80 angle-time-body-accelerometer-mean-gravity          
81 angle-time-body-accelerometer-jerk-mean-gravity-mean
82 angle-time-body-gyroscope-mean-gravity-mean         
83 angle-time-body-gyroscope-jerk-mean-gravity-mean    
84 angle-X-gravity-mean                                
85 angle-Y-gravity-mean                                
86 angle-Z-gravity-mean                                
87 data-source                                         
88 activity-id                                         
89 activity-name