# BMI_Haskell
Haskell BMI Project description

Project Overview

1.A. Brief description of project idea
    Our project idea is about calculating BMI (Body mass index) which is used in medical field to determine the condition of the body whether it’s normal ,overweight or underweight.

1.B. What is BMI ?
    BMI is a measurement of a person's leanness or corpulence based on their height and weight, and is intended to quantify tissue mass. Although BMI has limitations in that it is an estimate that cannot take body composition into account, it can be used as a general indicator of a healthy body weight based on a person's height. The value obtained from the calculation of BMI is widely used to categorize whether a person is underweight, normal weight, overweight, or obese depending on what range the value falls between. These ranges of BMI vary based on factors such as region and age, and are sometimes further divided into subcategories such as severely underweight or very severely obese. As previously mentioned however, due to a wide variety of body types as well as distribution of muscle, bone mass, and fat, BMI should be considered along with other measurements rather than being used as the sole method for determining a person's "healthy" body weight.

The formula is BMI = kg/m2 where kg is a person's weight in kilograms and m2 is their height in metres squared

BMI is used to broadly define different weight groups in adults 20 years old or older. The same groups apply to both men and women.
Underweight: BMI is less than 18.5
Normal weight: BMI is 18.5 to 24.9
Overweight: BMI is 25 to 29.9
Obese: BMI is 30 or more

2. Functions Description

isExist: takes a list of strings as input (names of the files) and return IO Bool as output (the result of finding file true or false)
CalBMI: take weight and height as an inputs of type double and return a double value of BMI factor using the BMI formula
getCondition: take the BMI factor as an input of type double and then return a string which describe person condition according to BMI table
main: the main function, which do the following
Check if the file is exist by calling isExist function, and if not exist it will print a message notifying the user about that then open new File in appending Mode 
Ask user to enter height and weight
Setting the date as user use the application
Process user inputs and call calBMI function to get BMI factor
Call getCondition function and pass to it BMI Factor to get user Condition
Write the results with the date into the opened File
print the results to the screen
Close the File
Ask the user if he want to use the application again, if so it will to go the main again and start the whole cycle


