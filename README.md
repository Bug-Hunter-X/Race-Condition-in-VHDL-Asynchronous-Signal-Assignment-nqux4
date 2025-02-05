# VHDL Race Condition Example

This repository demonstrates a subtle race condition that can occur in VHDL designs involving asynchronous signal assignments.  The example shows a simple entity that passes data from an input to an output port. However, if the input signal changes rapidly, a race condition may lead to incorrect output values.

## The Bug
The issue lies in the way the `data_in` signal is assigned to the `temp` signal and subsequently to `data_out`.  If `data_in` changes just before the clock edge, the new value may not be captured correctly.  This is because the assignments happen in a single clock cycle, without explicit synchronization or proper handling of setup and hold times.

## The Solution
The provided solution introduces a clocked process to reliably capture the input data, ensuring data integrity and eliminating the race condition.