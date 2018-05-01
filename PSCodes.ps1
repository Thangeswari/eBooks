#Code snippets from PowerShell eBook by Thangu
#Please type each command and not copy past for better learning.
#First Code in PowerShell
"Hello World"

#Saving all the work. Note the file location.
Start-Transcript

#Getting the calculations and store the result
1000*50 >> "F:\demo\win.txt"

#Go Back to my previous command!
#Use Up Arrow, do you see the previous command?

#No need to type the full name
"Type Get-Clip, then press TAB."
Get-Clipboard

#First Command
Get-Command

#Comman Actions
Get-Verb

#Get Help without Google
Get-Help Get-Date -examples

#Actually Running the Command
Get-Date

#Quitting execution
#Example "I typed a wrong command Get-Process with huge output and want to stop the execution"
Get-Process
q
#or
CTRL+C

#Piping
#To get the output of one command and send as input to another command
Get-Date | select *

#Getting properties
Get-Date | Get-Member

#Getting properties
(Get-Date).DayOfWeek

#Also, you can access methods of a command putting name of method followe by ().
#Example, to check if the time is DayLightSavings
(Get-Date).IsDayLightSavingTime()

#Rename the column displayed
Get-Date | select Date,@{name="Day";expression={$_.DayOfWeek}}

#Format Data,view all details of a command
Get-Date | Format-List

#Reading inputs
$name = Read-Host 'What is your username?'
$name

#Variables
$a=1
$sum=$a+1
$array=1,2,3
$array+=1
$hashFruitsColorPair=@{Orange="Orange";Apple="Red"}

#View the stored variable values?
$a
$sum
$array
$array[0]
$hashFruitsColorPair["Apple"]

#Function.Write own commands
#Syntax – Function <FunctionName>{<statements>};
function DisplayABC{"abc"}
#After writing the function, call the function using name`
DisplayABC

#Function with parameters
function myPing{ping $args}
Myping www.microsoft.com

#Use Ctrl+J in ISE window to get a predefined template

#Remote Methods.How to execute commands on other computers.Replace C1,C2 with valid computer names
Enter-PSSession –ComputerName C1
#Secure telnet : 
mstsc /v:C1
Invoke-Command –ComputerName C1,C2{Get-EventLog –LogName System –new 3}

#History.How to store all the commands i have typed so far?
Get-History
Get-History > "d:\scripts\history.txt"
