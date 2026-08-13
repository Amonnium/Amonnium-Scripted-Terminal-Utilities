## Create Calculator using arithmetic operators in PowerShell

Write-Host "Welcome to our Calculator utility"

$repeat = "Yes"

while($repeat -eq "Yes")
{
[int]$firstNumber = Read-Host "Enter the first number"
[int]$secondNumber = Read-Host "Enter the second number"

$operation = Read-Host "What operation you want to perform (+, -, *, /, %)"

Switch($operation)
{
    +
    {
        Write-Host("Result of your selected operation($operation) is:")
        $firstNumber + $secondNumber
    }
    -
    {
        Write-Host("Result of your selected operation($operation) is:")
        $firstNumber - $secondNumber
    }
    *
    {
        Write-Host("Result of your selected operation($operation) is:")
        $firstNumber * $secondNumber
    }
    /
    {
        Write-Host("Result of your selected operation($operation) is:")
        $firstNumber / $secondNumber
    }
    %
    {
        Write-Host("Result of your selected operation($operation) is:")
        $firstNumber % $secondNumber
    }
    default
    {
        Write-Host("Please select one of the available operations")
    }
}

$repeat = Read-Host "Do you want to perform another action(Yes/No)?"
}