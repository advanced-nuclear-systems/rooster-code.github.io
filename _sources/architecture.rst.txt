Architecture
###############

A constructor of the `Reactor <https://github.com/rooster-code/rooster/blob/main/B_reactor.py>`_ class creates instances of five classes:

* Class `Control <https://github.com/rooster-code/rooster/blob/main/B0_control.py>`_ 

    - reads input data;
    - evaluates signals using symbolic algebra;
    - provides interfaces between classes and 
    - hosts an ODE solver.

* Class `Solid <https://github.com/rooster-code/rooster/blob/main/B1_solid.py>`_ generates a required number of instances of `FuelRod <https://github.com/rooster-code/rooster/blob/main/B1B_fuelrod.py>`_ and `HeatStructure <https://github.com/rooster-code/rooster/blob/main/B1A_heatstructure.py>`_ classes.

    - Class `Fuelrod <https://github.com/rooster-code/rooster/blob/main/B1B_fuelrod.py>`_ generates for every axial slice 

        - Class `Fuel <https://github.com/rooster-code/rooster/blob/main/B1B0_fuel.py>`_
        - Class `InnerGas  <https://github.com/rooster-code/rooster/blob/main/B1B1_fuel.py>`_
        - Class `Clad  <https://github.com/rooster-code/rooster/blob/main/B1B2_clad.py>`_

    - Class `Heatstructure <https://github.com/rooster-code/rooster/blob/main/B1A_heatstructure.py>`_

* Class `Fluid <https://github.com/rooster-code/rooster/blob/main/B2_fluid.py>`_ solves mass, momentum and energy conservation equations for incompressible single-phase one-dimensional flow.
* Class `Core <https://github.com/rooster-code/rooster/blob/main/B3_core.py>`_ generates a required number of instances of `Isotope <https://github.com/rooster-code/rooster/blob/main/B3A_isotope.py>`_ and `Mix <https://github.com/rooster-code/rooster/blob/main/B3B_mix.py>`_ classes and includes the `solve_eigenvalue_problem <https://github.com/rooster-code/rooster/blob/main/B3_coreF.f90>`_ function containing Monte Carlo neutron transport and neutron diffusion solvers.
* Class `Data <https://github.com/rooster-code/rooster/blob/main/B4_data.py>`_ calculates material properties, Nusselt numbers and friction factors for Fluid and Solid classes.

.. _Fig2e041504:
.. figure:: _static/2e041504.png
  :width: 100%
  :align: center

.