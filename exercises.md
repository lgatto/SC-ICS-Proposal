# MQC for formative assessment

Exercices written by the participants in the frame
[R Consortium-funded Software Carpentry instructor training](https://lgatto.github.io/SC-ICS-Proposal/).

### Creating R functions

 Assume the following function definition:

```r
display <- function(a = 1, b = 2, c = 3) {
  result <- c(a, b, c)
  names(result) <- c("a", "b", "c")  # This names each element of the vector
  return(result)
}
```

What would the result be of the following function call (please note,
that is is considered bad form to combine named and positional
arguments this way): 

```r
display(c = 77, 5)
```

a)  (correct)
```r
 a  b  c 
 5  2 77 
```

b) (values are assigned in order disregarding the names)
```r
 a  b  c 
 77  5 3 
```

c) (named parameter is used correctly, then wrongly assumed that the
second argument will be passes to the second parameter)
```r
 a  b  c 
 1  5 77 
```

d) (thinking that you cannot add positional arguments after named arguments)
```r
 a  b  c 
 1  2 77 
```

### What is the assignment operator in R? 


1. `=` - a right answer
2. '<-' - a right answer
3. `<` - a wrong but almost plausible answer
4. 1 and 2, but 1 is preferred - Learner has understood that there is more than one assignment operator, but has not appreciated       style guide
5. 1 and 2, but 2 is prefferred - Learner has understood that there is more than one assignment operator, and has appreciated style guide
6. `==` - Learner is familiar with some commands in R, but has confused logical test with assignment operator


### What would the expected output be this hypothical function

```r
average(c(1,2,4))
```	
	
1. `2` (median: possibly correct but not specified)
2. `7/3` (average is a generic term often assumed to be the mean)
3. insufficient information to answer (correct)


## What will the following return (in R)? 

Make a prediction without running it: 
```r
NA == NA
```

1. `TRUE` - The terms are equal because they are both NA (incorrect)
2. `FALSE` - The terms are unequal because R considers each NA to be unique (incorrect)
3. `NA` - R cannot tell whether the missing values represented by the NAs are equal or unequal (correct)

### Data types

With the data frame, cats below, we run the command:

```r
rbind(cats, c('tabby', '4.0', TRUE)) 
```
What happens to the weight column?

```r
    coat weight likes_string
1 calico    2.1         TRUE
2  black    5.0        FALSE
3  tabby    3.2         TRUE
```

Answers

1. Returns an error
2. No error, converts the string `4.0` to a numeric type
3. No error, converts the column weight to a character type
4. No error, the current values in the weight column stays the same,
   the last row remains a character


### Unix shell

In unix shell if you are currently located in the folder
`/home/project/experiment_1/run_1` how would you navigate to the
folder `r/home/project`:

```
a) cd 
b) cd ../../
c) cd ../
```

### Git

You have been working on your code, in particular a file called
`analysis.r`. After a while, you look at your repository's state using
the `git status` command.  In the section "Changes not staged for
commit", it says `modified: analysis.r`. What is the next step you'll
want to do?

1. Run `git commit` to save changes (missed move to staging area)
2. Make changes to another file, everything is saved (mistaken notice for last commit)
3. Run `git add` to make git aware of your changes (correct)

### Subsetting

Consider a `data.frame` object in R, named `x`. How would you access
the values from the second column, in the 3rd and 5th rows:

1. `x[c(3, 5), 2]`
2. `x[2, c(3, 5)]`  -- switching rows and columns
3. `x[c(3, 5), ]`  -- forget to specify column
4. `x[(3, 5), 2]`  -- forget to specify rows as a vector using `c` function


### Scoping

What will running the following R code return:

```r
x <- 3 
get_x <- function(y ){
  return(x)
}

get_x(4)
```

1. It will produce an error (a reasonable guess because x isn't defined in the function)
2. `3`   (correct - it will find `x` defined in the global environment)
3. `4`   (guessing from the value y  passed to the function)

### Data types

What class of object does the following R command create?

```r
x <- sum(c(NA, 3.6, 5, TRUE))
```
 
1. integer - they missed the non-integer number, or don't know the precedence 
2. numeric - (CORRECT) 
3. logical - the TRUE is converted to a number
4. list    - not the constructor for a list, R tries to convert different object classes to a single type in a vector
5. character - not understanding that TRUE or NA are special words when not enclosed in quotes.

### Distributions

Students are presented witha figure showing a Poisson distribution. 

Q: What does this figure tell us about these data?

1. The data are non-parametric - Students misunderstand key terms 
2. The data follow a skewed normal distribution - Students recognise
   that the dat are not normally distrbuted but don't recognise the
   Poisson distribution
3. The data follow a Poisson distribution - This is correct
4. The data follow a normal distribution - Students do not recognise a normal distribution

## R-squared

What does the r-squared coefficient represent?

1. the percentage of the variation in the response variable explained by the linear model
2. the strength of the linear association between two variables
3. the value of the slope in a linear regression
4. the coefficient of correlation

### Exploring data frames

For a dataframe `my.df` with seven rows and four columns, which of the
following statements is true?

1. `length(rbind(my.df, my.df)) == 8`  - switching rows and columns
2. `nrow(my.df) == length(my.df)` - df as list of column vectors
3. `ncol(my.df) == length(my.df)` - correct
4. `dim(rbind(my.df, my.df)) == dim(cbind(my.df, my.df))` - very close


Given the dataframe cats of cats:

```r
       coat      weight     likes_to_eat
    1  calico    2.1        FISH
    2  black     5.0        FISH
    3  pink      3.2        COW
    4  green     6.6        COW
    5  pink      9.0        FISH
    6  tabby     6.8        MILK
```

What is the command to select a subset of the dataframe on what pink
cats like to eat?

1. `cats[c(3,5),]` OK but not applicable for larger dataframes (you
   have to know all the row numbers for your selector)
2. `cats[which(cats$coat=="pink"),]` OK but selecting all the columns
   (indicating potential problem with selecting rows/columns?)
3. `cats["pink",]` incorrect selector for rows (indicating potential
   problem with selectors)
4. `cats[cats$coat=="pink","likes_to_eat"]` best answer, most specific
   and succint
5. more than one are correct 
6. `[4]`

### Recycling vectors in R

Q: What is the correct answer for `x + y` when:
```r
x <- c(1, 2, 3, 4)
y <- c(1, 2)
```

1. `2 4 4 6`    (correct)
2. `2 3 4 5`    (added 1 to positions 3 and 4 in x)
3. `2 4 3 4`    (forgot to recycle)
4. `2 4`        (did not recycle the shorter vector to the longer)

### Starting with Data

Using the `download.file` function example:

```r
download.file("https://ndownloader.figshare.com/files/2292169", "data/portal_data_joined.csv")
```

In which directory might we find the file we have saved?

1. `data` (Correct)
2. `R` 
3. `R/Data`
4. the *working directory*
5. `~user`


## create dataframe

Say you want to exclude unhappy entries from the dataframe
below. 

```r
age <- c(1, 4, 10)
color <- c("red", "blue", "red")
weight_kg <- c(5, 9, 8)
happy <- c(TRUE, FALSE, TRUE)

df <- data.frame(age, color, weight_kg, happy)
```

Which of the following commands achieve this?

1. `df[df$happy == TRUE]` ## Misunderstanding of row/col selection
2. `df[df$happy == TRUE, ]` ## Correct, but confused with logical
3. `df[df$happy, ]` ## Correct
4. `df[df$happy == FALSE, ]` ## Mixed up logicals
5. `df[!df$happy, ]` ## Mixed up logicals
6. `df[df$happy != FALSE, ]` ## Correct answer, but confusing 


## Dimensions of a dataframe

How to find the dimention of a data frame, called `x`?

1. `length(x)` - Problem with the understanding of data frame multiple dimentions
2. `str(x)` - Not the correct command to address the question, even though the answer can be found with that command
3. `dim(x)`
4. `colnames(x)` - The learner did not understand the question / the learner has not idea how to address the question


## `dplyr` and data frames

Which of the following dplyr statements will return the columns called
`name` and `phone` from the `students` data frame?

1. `students %>% select(c(name, phone))`
2. `students %>% select(name, phone)`
3. `students %>% select(“name”, “phone”)`
4. `students %>% select(c(“name”, “phone”))`

Misconceptions identified above:

1. Columns must be presented in vector of unquoted column names
2. Correct
3. Column names must be quoted
4. Columns must be presented in a character vector

# Faded examples

## Temperature conversion

#### Calculate fahrenheit to kelvin

```r
fahr_to_kelvin <- function(temp) {
  kelvin <- ((temp - 32) * (5 / 9)) + 273.15
  return(kelvin)
}
```

#### Calculate Celsius to kelvin

```r
celsius_to_kelvin <- function(temp) {
  kelvin <- ____
  return(kelvin)
}
```

#### Calculate Kelvin to Celsius

```r
celsius_to_kelvin <- function(temp) {
  ____
}
```

#### Bonus questions

Chain functions to go from fahrenheit to celsius

```r
fahr_to_celsius <- function(temp) {
  ____
}
```


## More temperature conversion

```r
fahr_to_kelvin <- function(temp) {
  kelvin <- ((temp - 32) * (5 / 9)) + 273.15
  return(kelvin)
}
```

```r
kelvin_to_celsius <- function(temp) {
      celsius <- ____ - 273.15
      return(______)
   }
```

```r
fahr_to_celsius <- function(____) {
  ___ <- fahr_to_kelvin(____)
  result <- ___________(temp_k)
  return(result)
}
```

Write a function which can calculate both Celsius and Kelvin given the
temperature in Farenheit and return both results.

## Adding a row to a `data.frame`

Add a new `cat` to the cats `data.frame`, a 9 year-old 3.3 kg
tortoiseshell cat, which hates string.  Be careful, because one of the
variables is a factor, and there are no tortoiseshell cats in the
`data.frame` yet.


```r
> cats
    coat weight likes_string age
1 calico    2.1         TRUE 4
2  black    5.0        FALSE 5
3  tabby    3.2         TRUE 8`
```

```r
str(cats)
levels(cats$_____)
levels(cats$_____) <- c(cats$_____, ___________)
cats <- rbind(cats, list(_____,_____,____,_____))
```

#### Diagnostic question

```r
length(levels(cats$coat)) == 4
```

## Vector manipuation and functions

Here we have a numerical vector

```r
x <- c(1, 4, 5, 6)
```

Find the sum of all elements

```r
sum(x)
```

Extract the second and third element

```r
x[c(2, 3)]
```

Now extract the first and fourth

```r
x[___]
```

Now extract and sum any elements 

```r
f <- function(a, ind) {
  y <- ____   # extract elements
  return(___(y))
}
```

#### Solution

```r
f <- function(a, ind) {
  y <- a[c(ind)]
  return(sum(y))
}
```

## Plotting with `gglot2`

Full example

```r
library(ggplot2)
ggplot(data = diamonds, aes(x = carat, y = price)) +
  geom_point() 
```

Adding color

```r
ggplot(data = diamonds, aes(x = carat, y = price,____)) +
  geom_point() 
```

Solution

```r
ggplot(data = diamonds, aes(x = carat, y = price, color = cut)) +
  geom_point() 
```

The color alone is difficult to see, so now use ggplot's faceting
features to separate by cut

```r
ggplot(data = diamonds, aes(x = carat, y = price)) +
  geom_point() + facet_wrap(______)
```

Solution

```r
ggplot(data = diamonds, aes(x = carat, y = price)) +
  geom_point() + facet_wrap( ~ cut)
```

Now add color by calirty

```r
ggplot(data = diamonds, aes(____)) +
  ______ + facet_wrap( ~ cut)
```

Solution

```r
ggplot(data = diamonds, aes(x = carat, y = price, color = clarity)) +
geom_point() + facet_wrap( ~ cut)
```
  
Now plot price by depth, with the color mapping to diamond color

```r
ggplot(____) +_____
```

Solution

```r
ggplot(data = diamonds, aes(x = depth, y = price, color = color)) + geom_point() 
```



## Unit conversions

Complete example: Fahrenheit to kelvin

```r
fahr_to_kelvin <- function(temp) {
  kelvin <- ((temp - 32) * (5 / 9)) + 273.15
  return(kelvin)
}
fahr_to_kelvin(212)
```

Missing parts

```r 
# Convert 1 yard to 0.9144 meters
meters2yards <- function(argument goes here) {
  yards <- _code goes here!_
  return(yards)
}

meters2yards()
```


Problem statement only

```
Write a function to convert atmospheres to pounds per square inch
```

## More unit conversion

Full function `fahr_to_kelvin(26) => 269.82`

```r
fahr_to_kelvin <- function(temp) {
  kelvin <- ((temp - 32) * (5 / 9)) + 273.15
  return(kelvin)
}
```

Parital code for `fahr_to_celsius(26) => -3.3`

```r
fahr_to_celsius <-function(temp) {
        celsius <- (BLANK - 32)/1.8 
        return(celsius)
}
```

How does the output change is you input different temperatures? Why?

Function `celsius_to_kelvin(-3.3) => 269.82`


```r
BLANK <- function(temp) {
        kelvin <- BLANK
        BLANK # What happens if you leave this line blank? Does the function still work?
}
```


Write your own `kelvin_to_fahr(269.82) = > 26`

```r
kelvin_to_fahr <- BLANK
```

## Faded examples for a lookup table pattern

1. Begin with a vector of character values
2. Create ordered vector of unique values (a)
3. Create ordered vector of new values to replace unique values (b)
4. assign (a) as names to (b) 
5. subset result by the vector to re-label
    
1. Change `input <- c("2", "2", "3")` to `c("two", "two", "three")`

```r
numbers <- c("1", "2", "3")
words <- c("one", "two", "three")
names(words) <- numbers
words[input]
```

2. Translate `input <- c("three", "two", "three")` to `c("tres", "dos", "tres")`

```r
english <- c("one", "two", "three")
spanish <- c("uno",____________)
names(spanish) <- ________
______[input]
```


3. Score `input <- c("jack", "king")` to `c(11, 13)`

```r
cards <- ____________________
scores <- ____________________
____(scores) <- _______________
______ [ ________ ]
```


Diagnostic question: (determine if student understands how character
subsetting works in R) What does this return?

```r
c(A = 1, B = 2, C = 3) ["B"]
```

## `ggplot` faded example

```r
ggplot(surveys_complete) + geom_point(mapping = aes(x = weight, y = hindfoot_length))
```


Create a plot of GDPpercapita vs life expentancy using Gapminder dataset

```r
ggplot(______) + geom_point(mapping=aes(x=______, y=______))
```

Subset your graph by continent using color as an additional aestetic.

```r
ggplot(______) + geom_point(mapping=aes(x=______, y=______, ________)
```

Reduce overplotting of all groups by setting alpha parameter equal to 0.5

```r
ggplot(______) + geom_point(_____________________)
```

Add a layer with linear model (smooth function) using the same aestetics

```r
ggplot(______) + geom_point(_____________________), ___________
```

Instead of plotting a smooth line per continent, how to just plot a
smooth line for the entire dataset.

```r
ggplot(______) + ______________ + ______________
```

## Subsetting and conditionals 

Assumes learner knows about `&`, `|`, `==`, `!=`.

#### Vectors

```
x <- c("d", "a", "b", "c", "c", "d")
```
Get values that are equal to `"d"`

```r
x[x == "d"]
```

Get values that are equal to either `"d"` or `"a"`


```r
x[x == "d" | _____ ]
```

Return a vector with all elements except `"c"`

```r
x[ ______ ]
```

#### data.frame

```r
y <-  read.csv("https://ndownloader.figshare.com/files/2292169")
```

Which days were recorded in December?

```r
dec_days <- y[y$month  == 12, "day"]
barplot(table(dec_days))
```


What species were recorded in Dec and that are female?


```r
y[ ______ , ]
```

Answer

```r
spp_dec <- y[y$month == 12 & y$sex == "F", "species"]
barplot(table(spp_dec))
```

Bonus question: Why does the barplot include all of the species?




