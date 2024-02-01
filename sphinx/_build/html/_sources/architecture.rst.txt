Architecture
###############

A constructor of the `Reactor <https://github.com/rooster-code/rooster/blob/main/B_reactor.py>`_ class creates instances of four classes:

* Class `Control <https://github.com/rooster-code/rooster/blob/main/B0_control.py>`_ reads input data, evaluates signals using symbolic algebra, provides interfaces between classes and an ODE solver.
* Class `Solid <https://github.com/rooster-code/rooster/blob/main/B1_solid.py>`_ generates a required number of instances of Fuelrod and Heatstructure classes.
* Class `Fluid <https://github.com/rooster-code/rooster/blob/main/B2_fluid.py>`_ solves mass, momentum and energy conservation equations for incompressible single phase one-dimensional flow.
* Class `Core <https://github.com/rooster-code/rooster/blob/main/B3_core.py>`_ generates a required number of instances of Isotope and Mix classes and includes the solve_eigenvalue_problem function containing Monte Carlo neutron transport and neutron diffusion solvers.

.. _Fig2e041504:
.. figure:: _static/2e041504.png
  :width: 100%
  :align: center
