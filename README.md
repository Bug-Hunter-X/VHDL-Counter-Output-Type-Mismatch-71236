# VHDL Counter with Incorrect Output Type
This repository demonstrates a common error in VHDL code: using an incorrect data type for an output port. The provided example shows a counter that incorrectly uses the INTEGER type for the output, causing synthesis and simulation issues.

The bug is explained in the `bug.vhdl` file, while the correct solution is demonstrated in the `bugSolution.vhdl` file.  The correct approach uses STD_LOGIC_VECTOR to match typical hardware representations.

## Bug Description
The original code declares the output port `count` as `INTEGER`.  However, hardware designs typically use binary representations.  Therefore, using `INTEGER` can cause problems during synthesis, leading to larger and inefficient implementations, or outright synthesis failures.

## Solution
The solution uses `STD_LOGIC_VECTOR` for the output port, allowing for a direct and efficient hardware implementation. The solution also shows best practices for signal naming, improving code clarity and readability.  The range is set to match the desired number of bits for the output.
