#!/usr/bin/env bash
# simple-interest.sh
# Calculator that computes simple interest from user input.
# Inputs: principal, rate of interest (percent per year), time period (years).
# Formula: Simple Interest = (principal * rate * time) / 100

set -euo pipefail

echo "Simple Interest Calculator"
echo "--------------------------"

read -r -p "Enter the principal amount: " principal
read -r -p "Enter the rate of interest (percent per year): " rate
read -r -p "Enter the time period (in years): " time

number_re='^[0-9]+([.][0-9]+)?$'

if ! [[ "$principal" =~ $number_re ]] || ! [[ "$rate" =~ $number_re ]] || ! [[ "$time" =~ $number_re ]]; then
  echo "Error: principal, rate of interest, and time period must be non-negative numbers." >&2
  exit 1
fi

interest=$(awk -v p="$principal" -v r="$rate" -v t="$time" 'BEGIN { printf "%.2f", (p * r * t) / 100 }')
total=$(awk -v p="$principal" -v i="$interest" 'BEGIN { printf "%.2f", p + i }')

echo
echo "Principal:        $principal"
echo "Rate of interest: ${rate}%"
echo "Time period:      $time years"
echo "Simple interest:  $interest"
echo "Total amount:     $total"