# ROOSTER: Robust Object Oriented Solver of Transport Equations in a Reactor

The ROOSTER projects aims at developing a software for multi-physics modeling of Generation-IV Sodium Fast Reactor.

## How to install and execute.
1. Clone the code: `git clone https://github.com/armstrong-dev/armstrong-dev.github.io.git` or download and unpack ZIP.

2. Compile Fortran source to the `.so` library by running `compile` or `compile_noOMP` batch files. Note that the `gfortran` compiler should be installed.

3. Launch ROOSTER by entering the command `python3 A_rooster.py`.

4. Find the results in the `output` directory.