#!/bin/bash

# Set decimal precision
SCALE=4

echo "📱 Welcome to the Bash Calculator!"
echo "Type 'quit' or 'q' to exit."
echo "-----------------------------------------"

while true; do
    # Prompt for first number
    read -p "Enter first number: " num1
    if [[ "$num1" == "quit" || "$num1" == "q" ]]; then
        echo "👋 Goodbye!"
        exit 0
    fi

    # Prompt for operator
    read -p "Enter operator (+, -, *, /, %): " op
    if [[ "$op" == "quit" || "$op" == "q" ]]; then
        echo "👋 Goodbye!"
        exit 0
    fi

    # Prompt for second number
    read -p "Enter second number: " num2
    if [[ "$num2" == "quit" || "$num2" == "q" ]]; then
        echo "👋 Goodbye!"
        exit 0
    fi

    # Handle division by zero for floating point
    if [[ "$op" == "/" && $(echo "$num2 == 0" | bc) -eq 1 ]]; then
        echo "❌ Error: Division by zero is not allowed."
        continue
    fi

    # Perform calculation using bc for float support
    result=$(echo "scale=$SCALE; $num1 $op $num2" | bc -l 2>/dev/null)

    # Check for bc errors (invalid input)
    if [[ $? -ne 0 ]]; then
        echo "❌ Invalid expression! Please try again."
        continue
    fi

    echo "✅ Result: $num1 $op $num2 = $result"
    echo "-----------------------------------------"
done
