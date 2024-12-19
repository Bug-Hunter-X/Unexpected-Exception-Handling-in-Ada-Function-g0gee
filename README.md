# Ada Exception Handling Bug

This repository demonstrates a subtle bug related to exception handling in an Ada function. The `Check_Range` function intends to check if an integer value is greater than 10. However, the `others` exception handler is too general, potentially masking real errors.  A more robust solution refines exception handling to only catch specific, expected exceptions.

## How to Reproduce

1. Compile and run `bug.ada`.
2. Note that the output shows both true and false correctly.
3.  The potential problem is that other exceptions (like overflow) might not be reported as clearly as intended.

## Solution

The `bugSolution.ada` file provides a more robust solution by specifying precisely which exceptions are caught and addressed or propagated.