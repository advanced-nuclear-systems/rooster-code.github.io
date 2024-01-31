Theory: Thermal Hydraulics
==========================
Nodalization
------------
The thermal-hydraulic model is built from single-node or multi-node 1D pipes connected by junctions. Internal junctions are automatically generated for multi-node pipes. See  :ref:`Fig09bd035a`.

.. _Fig09bd035a:
.. figure:: _static/09bd035a.png
  :height: 300
  :align: center

  Two single-node pipes :math:`A` and :math:`B` connected by a junction :math:`o`

Pipes can be of different types as described in input description:

* :ref:`input Pipe without free level`
* :ref:`input Pipe with free level` (always single-node)
* :ref:`input Pipe without free level with temperature defined by signal` (always single-node)

The simulated circuit should be a closed network of 1D pipes, including at least one single-node pipe with a free surface. The gas pressure above the free surface is a boundary condition for the model. See :ref:`Fig8dfee44a`.

.. _Fig8dfee44a:
.. figure:: _static/8dfee44a.png
  :width: 300
  :align: center

  Example of the closed network

Main equations
--------------
A 1D single-phase thermal-hydraulic model of ROOSTER for a non-compressible fluid includes 

* liquid sodium and liquid lead equations-of-state;
* mass conservation equation :eq:`Eq01`;
* momentum conservation equation :eq:`Eq02`;
* energy conservation equation :eq:`Eq03`.

Mass conservation equation
^^^^^^^^^^^^^^^^^^^^^^^^^^
Mass conservation equation is written for every node. See  :ref:`Fig09bd035a`.

.. math::  \sum_{in} G_i - \sum_{out} G_o  = 0
  :label: Eq01


where

.. list-table::
   :header-rows: 0

   * - .. math::  \sum_{in} G_i
     - the sum of mass flowrates over the inlet junctions of the node
     - kg/s
   * - .. math::  \sum_{out} G_o
     - the sum of mass flowrates over the outlet junctions of the node
     - kg/s

Momentum conservation equation
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Momentum conservation equation is written for every junction, e.g. junction :math:`o`, connecting the nodes :math:`A` and :math:`B`. See  :ref:`Fig09bd035a`.

.. math::  \left( \frac{L_A}{2A_A} + \frac{L_B}{2A_B} \right) \frac{dG_o}{dt} + P_B - P_A =
  :label: Eq02

.. math::  = ( \rho v^2 )_A - ( \rho v^2 )_B + \Delta P_{GRAV} - \Delta P_{FRIC} + \Delta P_{PUMP}

where

.. list-table::
   :header-rows: 0

   * - :math:`L_A` and  :math:`L_B` 
     - the lengths of nodes A and B
     - m
   * - :math:`A_A` and  :math:`A_B`
     - the flow areas of nodes A and B
     - m\ :sup:`2`
   * - :math:`G_o`
     - the flowrate in junction o
     - kg/s
   * - :math:`P_A` and  :math:`P_B`
     - the pressure in nodes A and B
     - Pa
   * - :math:`{\rho}`
     - the coolant density
     - kg/ m\ :sup:`3`
   * - :math:`{v}`
     - the velocity
     - m/s
   * - :math:`\Delta P_{GRAV} = ( \rho g H/2 )_A + ( \rho g H/2 )_B`
     - gravity head
     - Pa
   * - :math:`g`
     - the acceleration due to gravity
     - m/s\ :sup:`2`
   * - :math:`H`
     - the elevation of the node
     - m
   * - :math:`\Delta P_{FRIC}`
     - the friction loss
     - Pa
   * - :math:`\Delta P_{PUMP}`
     - the pump head
     - Pa

Energy conservation equation
^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Energy conservation equation is written for every node. See  :ref:`Fig09bd035a`.

.. math::  \rho v \frac{dh}{dt} = \sum_{in} G_i h_i - \sum_{out} G_o h_o + q_w A_w
  :label: Eq03

where

.. list-table::
   :header-rows: 0

   * - :math:`{\rho}`
     - the coolant density in the node
     - kg/ m\ :sup:`3`
   * - :math:`v`
     - the coolant velocity in the node
     - m/s
   * - :math:`h`
     - the coolant specific enthalpy in the node
     - J/kg
   * - :math:`t`
     - the time
     - s
   * - :math:`G_i`
     - the flowrate in the inlet junction :math:`i`
     - kg/s
   * - :math:`h_i`
     - the coolant specific enthalpy in the inlet junction :math:`i`
     - J/kg
   * - .. math:: \sum_{in}
     - the sum of mass flowrates over the inlet junctions of the node
     - 
   * - :math:`G_o`
     - the flowrate in the outlet junction :math:`o`
     - kg/s
   * - :math:`h_o`
     - the coolant specific enthalpy in the outlet junction :math:`o`
     - J/kg
   * - .. math:: \sum_{out}
     - the sum of mass flowrates over the outlet junctions of the node
     - 
   * - :math:`q_w`
     - the heat flux from all heat exchange surfaces in the node
     - W/m\ :sup:`2`
   * - :math:`A_w`
     - the area of all heat exchange surfaces in the node
     - m\ :sup:`2`

Algorithm for finding pressure
------------------------------

The algorithm for finding pressure is as follows:

#. A set of linear algebraic equations is built of

    * mass conservation equations :eq:`Eq01` written for every node (except nodes of the pipes with a free surface) and differentiated with respect to time so that left-hand sides are sum of time derivatives of inlet and outlet mass flowrates and right-hand sides are zeros:

    .. math::  \sum_{in} \frac{dG_i}{dt} - \sum_{out} \frac{dG_o}{dt}  = 0
      :label: Eq04

    * momentum conservation equations for every junction between the nodes so that left-hand sides are time derivatives of mass flowrate in the junctions and differences of the pressures in two nodes connected by the junction, while right-hand sides are gravity heads, friction pressure losses and momentum sources.

#. The set of linear algebraic equations is solved with respect to time derivatives of momentum in every junction and pressure values in every node.

Time integration
----------------

The time derivatives of mass flowrate in junctions and enthalpies in nodes are then integrated using an ODE solver LSODES available from the SciPy library .

Closure relations
-----------------

The closure relations of the model includes 

* correlations for friction factors

    - the Rehme model for tube bundles [Rehme1973]_ and 
    - the Churchill model for pipes [Churchill1977]_

* correlations for heat exchange coefficient

    - the Mikityuk model [Mikityuk2009]_ for tube bundles and
    - the Subbotin correlation for pipes [Subbotin1962]_.
