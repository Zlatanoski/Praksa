#!/bin/bash

display_menu(){

    echo "1)Addition "
    echo "2)Substraction " 
    echo "3)Multiplication "
    echo "4)Division "
    echo "5)Exit Calculator "
    echo
    read -p "Enter your choice: " choice 
    
    if [[ ! -z $choice && "$choice" =~ ^-?[1-4]+$ ]]; then 
        read -p "Please enter 2 numbers: " num1 num2
    elif [[ "$choice" == "5" ]]; then 
        exitcalculator
    else
        echo "You didnt enter a number or you left it empty! "
    fi 
}

additionofnumbers(){
    resultsum=$(($num1+$num2))
    echo "Addition of $num1 and $num2 is: $resultsum"
}

substractionofnumbers(){
    resultsub=$(($num1-$num2))
    echo "Substraction of $num1 and $num2 is: $resultsub"
}

multiplicationofnumbers(){
    resultmul=$(($num1x$num2))
    echo "Multiplication of $num1 and $num2 is: $resultmul"
}

divisionofnumbers(){
    if [[ $num2 -eq 0 ]]; then
        echo "Error: Division by zero is not allowed."
        return 1  
    fi

    resultdiv=$((num1 / num2))
    remainder=$((num1 % num2))
    
    echo "Division of $num1 by $num2 is: $resultdiv"
    echo "Remainder: $remainder"
}

exitcalculator(){
    echo "Exiting the program, Goodbye!"
    exit 0 
}


while true; do

    display_menu


    if [[ "$choice" == "2" ]]; then
        substractionofnumbers 
    elif [[ "$choice" == "1" ]]; then
        additionofnumbers
    elif [[ "$choice" == "3" ]]; then
        multiplicationofnumbers
    elif [[ "$choice" == "4" ]]; then
        divisionofnumbers
    elif [[ "$choice" == "5" ]]; then
        exitcalculator
    else 
        echo "Invalid input, please enter a number between 1-5: "
    fi

done 