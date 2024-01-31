Welcome
#######
ROOSTER is a software developed to model a steady-state and transient behaviour of Generation-IV nuclear systems using fast neutron spectrum and liquid metals for cooling.
The name stands for **R**\ obust **O**\ bject-**O**\ riented **S**\ olver of **T**\ ransport **E**\ quations in a **R**\ eactor.
The code is open source, multiphysics, object-oriented, written in Python 3 with Fortran 2009  math kernels.
The code includes physical (neutronic, thermal-hydraulic, heat structures, fuel behaviour) and mathematical (ordinary differential equation solver, symbolic and linear algebra, sparse matrix treatment) components.

Why a new code?
===============
On one hand, the state-of-the-art computer modelling of Generation-IV SFRs is determined by legacy codes, such as SIMMER [SIMMER]_ and SAS-SFR [SASSFR]_, which accumulated experience of dozens of experts and decades of analytical and experimental Research and Development (R&D) studies.
However, these codes are proprietary and partly based on the vintage programming paradigm.
This limits involvement in their development of new generation of nuclear engineers and scientists: due to organization issues and also because of the difficulties in understanding the code source and the expected low-barrier access paradigm of today.
In this context, a new concept including higher-level abstraction layers can facilitate adoption and understanding of the code architecture and functionalities which in turn create trust.


On the other hand, the state of the art is currently defined by a number of new calculational platforms and solvers recently launched using modern object-oriented libraries and applied in particular to Generation-IV reactor systems, see, e.g., MOOSE [Gaston2009]_ or GeN-Foam [Fiorina2015]_.

.. toctree::
    :maxdepth: 2
    :hidden:

    input
    theory
    examples
    references