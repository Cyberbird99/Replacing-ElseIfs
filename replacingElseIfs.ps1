<#The switch statement lets you test a value against a number of conditions.
 It is similar to multiple if-else statements, but it’s a much more efficient way 
 to handle various conditions.#>

$file="/home/PC01/Replacing ElseIFs/file.txt"

$Data=Get-Content -Path $file
$name=$Data[0]

if($name -eq 'John'){
    Write-Output "I am John"
}elseif ($name -eq 'Jim') {
    Write-Output "I am Jim"
}elseif ($name -eq 'Jenny') {
    Write-Output "I am Jenny"
}else{
    Write-Output "I don't know who I am"
}


$name="John"
switch($name){
    "John"{
        Write-Output "I am John"
        break
    }
    "Jenny"{
        Write-Output "I am Jenny"
        break
    }
    "Jim"{
        Write-Output "I am Jim"
        break
    }
    default{
        Write-Output "I don't know who I am"
        break
    }
}

switch($Data.Count){
    {$_ -lt 2}{
        Write-Output "This file contains less than 2 lines"
        break
    }
    {$_ -eq 7}{
        Write-Output "This file contains 7 lines exactly"
        break
    }
    {$_ -lt 10}{
        Write-Output "This file contains less than 10 lines, more than 8"
        break
    }
    default{
        Write-Output "This file contains 10 of more lines"
        break
    }
}