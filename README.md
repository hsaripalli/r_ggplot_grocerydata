# r_ggplot_grocerydata
Visualization of grocery data set using R ggplot 

Using the sample grocery data set, I created the following visualizations: 

1. A scatterplot of grocery bill and the distance to store.
2. A boxplot of family income, broken out by the number of adults.
3. A histogram of family income
4. A bar chart showing the total sales by family size.
5. Visualize family income, grocery bill, and vegetarians in one chart

#load libraries
> 
> library(dplyr)
> library(ggplot2)
> library(readxl)
> 
> 
> # read excel file with the sample dataset
> 
> myfile <- read_excel("C:\\hS\\GMMA\\860 Acquistion and Management of Data\\Session 2\\MMA_860_Grocery_Data.xlsx")
> 
> 
> #inspect data
> 
> summary(myfile)
      Obs          Grocery_Bill   Family_Income     Family_Size      N_Vehicles    Distance_to_Store   Vegetarian      N_Children      Family_Pet   
 Min.   :   1.0   Min.   :106.0   Min.   : 70037   Min.   :1.000   Min.   :0.000   Min.   : 1.000    Min.   :0.000   Min.   :0.000   Min.   :0.000  
 1st Qu.: 250.8   1st Qu.:179.0   1st Qu.: 81331   1st Qu.:1.000   1st Qu.:1.000   1st Qu.: 2.000    1st Qu.:0.000   1st Qu.:0.000   1st Qu.:0.000  
 Median : 500.5   Median :223.3   Median : 92205   Median :2.000   Median :2.000   Median : 5.000    Median :0.000   Median :0.000   Median :0.000  
 Mean   : 500.5   Mean   :245.7   Mean   :104133   Mean   :2.135   Mean   :1.902   Mean   : 6.609    Mean   :0.063   Mean   :0.614   Mean   :0.159  
 3rd Qu.: 750.2   3rd Qu.:306.6   3rd Qu.:127356   3rd Qu.:3.000   3rd Qu.:3.000   3rd Qu.:10.000    3rd Qu.:0.000   3rd Qu.:1.000   3rd Qu.:0.000  
 Max.   :1000.0   Max.   :524.1   Max.   :146611   Max.   :6.000   Max.   :3.000   Max.   :20.000    Max.   :1.000   Max.   :3.000   Max.   :1.000  
    N_Adults    
 Min.   :1.000  
 1st Qu.:1.000  
 Median :1.000  
 Mean   :1.521  
 3rd Qu.:2.000  
 Max.   :3.000  
> head(myfile)
# A tibble: 6 x 10
    Obs Grocery_Bill Family_Income Family_Size N_Vehicles Distance_to_Store Vegetarian N_Children Family_Pet N_Adults
  <dbl>        <dbl>         <dbl>       <dbl>      <dbl>             <dbl>      <dbl>      <dbl>      <dbl>    <dbl>
1     1         358.        142141           4          3                15          0          2          1        2
2     2         277.        145916           2          1                 4          0          0          0        2
3     3         198.         86185           1          2                14          0          0          0        1
4     4         316.        145998           3          1                 8          0          1          0        2
5     5         203.         79341           1          2                19          1          0          0        1
6     6         197.         77115           2          1                 2          0          1          1        1
> str(myfile)
tibble [1,000 x 10] (S3: tbl_df/tbl/data.frame)
 $ Obs              : num [1:1000] 1 2 3 4 5 6 7 8 9 10 ...
 $ Grocery_Bill     : num [1:1000] 358 277 198 316 203 ...
 $ Family_Income    : num [1:1000] 142141 145916 86185 145998 79341 ...
 $ Family_Size      : num [1:1000] 4 2 1 3 1 2 2 1 1 1 ...
 $ N_Vehicles       : num [1:1000] 3 1 2 1 2 1 1 2 3 0 ...
 $ Distance_to_Store: num [1:1000] 15 4 14 8 19 2 4 8 8 2 ...
 $ Vegetarian       : num [1:1000] 0 0 0 0 1 0 0 0 0 0 ...
 $ N_Children       : num [1:1000] 2 0 0 1 0 1 1 0 0 0 ...
 $ Family_Pet       : num [1:1000] 1 0 0 0 0 1 0 0 0 0 ...
 $ N_Adults         : num [1:1000] 2 2 1 2 1 1 1 1 1 1 ...
> 


