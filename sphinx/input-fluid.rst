Fluid cards
===========
``jun`` : Dependent junction
----------------------------
.. code-block:: text

    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    # Dependent junction
    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    #####     from      to
    jun       UP1       PLN
    jun       DOWN      UP2
    jun       UP2       PLN

A junction connects two pipes:

* ``from`` : id of the user-defined pipe id the junction comes from;
* ``to`` : id of the user-defined pipe id the junction comes to.

The mass flowrate in the dependent junction could be found from mass flowrates in independent juntions.

``jun-i`` : Independent junction
---------------------------------
.. code-block:: text

    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    # Inependent junction
    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    #####     from      to
    jun-i     PLN       DOWN

A junction connects two pipes:

* ``from`` : id of the user-defined pipe id the junction comes from;
* ``to`` : id of the user-defined pipe id the junction comes to.

The mass flowrate in the dependent junction could be found from mass flowrates in independent juntions which found by integration of the momentum conservation equations.

``jun-i-f`` : Independent junction with user-defined flowrate
-------------------------------------------------------------
.. code-block:: text


    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    # Inependent junction with user-defined flowrate
    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    #####     from      to        signal
    jun-i-f   DOWN      UP1       MDOT_VS_T

A junction connects two pipes:

* ``from`` : id of the user-defined pipe id the junction comes from;
* ``to`` : id of the user-defined pipe id the junction comes to;
* ``signal`` : id of the user-defined signal of flowrate in the junction.

The mass flowrate in the dependent junction could be found from mass flowrates in independent juntions which found by integration of the momentum conservation equations. In case of the independent junction with user-defined flowrate, the time derivative of mass flowrate is set to zero and flowrate is set equal to the specified signal at the current time step.

``jun-i-p`` : Independent junction with user-defined pump head
--------------------------------------------------------------
.. code-block:: text

    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    # Inependent junction with user-defined pump head
    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    #####     from      to        signal
    jun-i-p   PLN       DOWN      PMPHEAD_VS_T
    
A junction connects two pipes:

* ``from`` : id of the user-defined pipe id the junction comes from;
* ``to`` : id of the user-defined pipe id the junction comes to;
* ``signal`` : id of the user-defined signal of pump head in the junction.

The mass flowrate in the dependent junction could be found from mass flowrates in independent juntions which found by integration of the momentum conservation equations. In case of the independent junction with user-defined pump head, the specified signal at the current time step is added to the right-hand side of the momentum conservation equation.

.. _input Pipe without free level:

``pipe`` : Pipe without free level
----------------------------------
.. code-block:: text

    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    # Pipes
    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    #####     id        matid     dhyd(m)   len(m)    dir(-)    areaz(m2) nnodes
    pipe      UP1       NA        0.01      1.0       1.0       1.1       10

* ``id`` : user-defined pipe id;
* ``matid`` : user-defined material id (should appear in the ``mat`` card);
* ``dhyd`` : hydraulic diameter (m);
* ``len`` : pipe length (m);
* ``dir`` : pipe direction: from -1.0 (downward) up to 1.0 (upward) (-);
* ``areaz`` : flow area (m\ :sup:`2`);
* ``nnodes`` : number of nodes.

.. _input Pipe with free level:

``pipe-f`` : Pipe with free level
---------------------------------
.. code-block:: text

    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    # Pipe with free level
    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    #####     id        matid     dhyd(m)   len(m)    areaz(m2)
    pipe-f    PLN       NA        0.1       1.0       1.1

* ``id`` : user-defined pipe id;
* ``matid`` : user-defined material id (should appear in the ``mat`` card);
* ``dhyd`` : hydraulic diameter (m);
* ``len`` : pipe length (m);
* ``areaz`` : flow area (m\ :sup:`2`).

A pipe with free level has always one node.

.. _input Pipe without free level with temperature defined by signal:

``pipe-t`` : Pipe without free level with temperature defined by signal
-----------------------------------------------------------------------
.. code-block:: text

    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    # Pipe with user-defined temperature
    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    #####     id        matid     dhyd(m)   len(m)    dir(-)    areaz(m2) nnodes    signal
    pipe-t    DOWN      NA        0.01      1.0       -1.0      1.1       10        TEMP_VS_T

* ``id`` : user-defined pipe id;
* ``matid`` : user-defined material id (should appear in the <code>mat</code> card);
* ``dhyd`` : hydraulic diameter (m);
* ``len`` : pipe length (m);
* ``dir`` : pipe direction: from -1.0 (downward) up to 1.0 (upward) (-);
* ``areaz`` : flow area (m\ :sup:`2`);
* ``nnodes`` : number of nodes;
* ``signal`` : id of the signal specifying temperature in all nodes of the pipe.

The time derivative of temperature in every node of the pipe is set to zero and temperature is set equal to the specified signal at the current time step.

``thermbc`` : Thermal boundary conditions
-----------------------------------------
.. code-block:: text

    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    # Thermal boundary conditions
    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    #####     id        type      qf
    thermbc   BC01      0         0
    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    #####     id        type      alfa      temp
    thermbc   BC02      1         1e4       293
    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    #####     id        type      pipeid    pipenode
    thermbc   BC03      2         UP1       1

* ``id`` : user-defined boundary condition id (used in the ``htstr`` card);
* ``type`` : flag of boundary condition type;

   - ``0`` : constant heat flux from the heat structure surface assumed

       * ``qf`` : heat flux (W/m\ :sup:`2`);

   - ``1``: heat flux from the heat structure surface defined by heat exchange coefficient and external temperature (both constant)

       * ``alfa`` : heat exchange coefficient (W/m\ :sup:`2` K);
       * ``temp`` : temperature (K);
   
   - ``2`` : heat structure surface coupled to the pipe node
   
       * ``pipeid`` : thermal-hydraulic pipe id defined in the <code>pipe</code> card;
       * ``pipenode`` : index of the node inside the thermal-hydraulic pipe coupled to the heat structure.
