#!/bin/sh

echo "What is your name?"
read name

echo "How old are you?"
read age

getrich=$((( $RANDOM % 15)+ $age))

echo "Hello, $name, you are $age years old... That's awesome!"
echo "You are gonna get rich by age $getrich"
