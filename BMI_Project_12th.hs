---------------------------- Haskell 12th Project ------------------------------
import System.IO -- for file read/write
import Data.Time -- for time
import System.Directory -- for file existance

-- function to search for exist file
isExist :: [String] -> IO Bool
isExist = fmap and . mapM doesFileExist

-- function to calculate BMI 
calBMI :: Double -> Double -> String
calBMI w h = show(w / h^2)

-- function to get the condition based on BMI
getCondition :: Double -> String
getCondition bmi
 |  bmi >= 30.0 = "Obese"
 | (bmi >= 25) && (bmi <= 29.9) = "Overweight"
 | (bmi >= 18.5) && (bmi <= 24.9) = "Healthy weight"
 | (bmi < 18.5) = "Underweight" 


main = do
-- check if the bmi file exist or not to avoid using readFile on null 
boolValue <- isExist ("bmi.txt":[])
if boolValue
    then do
        contents <- readFile "bmi.txt" 
        putStrLn contents 
    else putStrLn "You don't have any recent logs !"
-- open file in Appending Mode
theFile <- openFile "bmi.txt" AppendMode

-- getting Info from user
putStrLn "Enter your Weight In Kg: "
w <- getLine
putStrLn "Enter your Height In Meter: "
h <- getLine
zt <- getZonedTime

-- Calculating BMI and determining condition
let weight = (read w :: Double)
let height = (read h :: Double)
let bmi = calBMI weight height
let bmiDouble = (read bmi :: Double)
let condition = getCondition bmiDouble


-- Put the text in the file
hPutStrLn theFile ("--------------------------BEGIN---------------------------")
hPutStrLn theFile (show zt)
hPutStrLn theFile ("Weight: " ++ w)
hPutStrLn theFile ("Height: " ++ h)
hPutStrLn theFile ("BMI: " ++ bmi)
hPutStrLn theFile ("Condition: " ++ condition)
hPutStrLn theFile ("--------------------------END-----------------------------")
hPutStrLn theFile ("")

-- Printing the result
putStrLn ("Your BMI is : "++bmi)
putStrLn ("Your Condition is : "++condition)

-- Close the file
hClose theFile

-- ask user if they want to continue with options
putStrLn "" -- Line space
putStrLn "-Press enter to continue or type \"exit\" "
input <- getLine
let toInt = (read input):: Int
if input == "exit" then putStrLn "" else main
