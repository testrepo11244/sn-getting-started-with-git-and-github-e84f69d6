# Simple Interest Calculator

## Project name
**Simple Interest Calculator** — a small command-line project for the IBM Skills Network course *Getting Started with Git and GitHub*.

## About
This repository contains a Bash calculator that computes **simple interest** from three user inputs:

- **Principal** — the starting amount of money
- **Rate of interest** — the annual interest rate, as a percentage
- **Time period** — how long the money is invested or borrowed, in years

Simple interest is calculated with:

```
Simple Interest = (Principal × Rate of Interest × Time Period) / 100
Total Amount    = Principal + Simple Interest
```

## How to run
1. Make the script executable:
   ```bash
   chmod +x simple-interest.sh
   ```
2. Run it:
   ```bash
   ./simple-interest.sh
   ```
3. Enter the principal, rate of interest, and time period when prompted.

### Example
```
Enter the principal amount: 1000
Enter the rate of interest (percent per year): 5
Enter the time period (in years): 2
Simple interest: 100.00
Total amount:    1100.00
```

## Repository contents
| File | Purpose |
| --- | --- |
| `simple-interest.sh` | Bash simple-interest calculator |
| `LICENSE` | Apache License 2.0 |
| `CODE_OF_CONDUCT.md` | Community standards |
| `CONTRIBUTING.md` | How to contribute |

## License
This project is licensed under the Apache License, Version 2.0. See the `LICENSE` file for details.