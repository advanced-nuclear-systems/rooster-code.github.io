Control cards
=============
``#`` : Comment
---------------

.. code-block:: text

    # A line started with a hash mark is considered a comment.

``&`` : Line continuation
-------------------------
.. code-block:: text

    # An ampersand symbol at the end of the line &
    is a line continuation symbol.

``signal`` : User-defined signal
--------------------------------
.. code-block:: text

    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    # Signals
    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    #####     id        type      value
    signal    TSTART    boolean   TIME      le        250
    signal    TEMP      constant  600
    signal    DCHAN     dens      CHAN
    signal    RHO_CRDL  formula   K_CR*(TIN*1.73E-05 + TCRDL*1.70E-05-TVESS*1.70E-05 + TFUEL1*1.30E-05)
    signal    RHO_CR    lookup    TIME      &
              0.0       0.0                 &
              0.0       250.0               &
              -50.0     252.0               &
              -50.0     3000.0
    signal    LNTF1     function  ln        TFUEL1
    signal    TCLAD     tclad     FR
    signal    TCHAN     temp      CHAN
    signal    TFUEL     tfuel     FR
    signal    TIME      time

    ``id`` : user-defined signal id;
    ``type`` : signal type;
    ``value`` : signal value.

Currently available signal types (under development):

* ``boolean`` : any constant numeric value; the following logical expression can use signal ID, logical operator (``lt``, ``le``, ``eq``, ``ne``, ``gt``, ``ge``), constant;
* ``constant`` : any constant numeric value;
* ``dens`` : average pipe density (kg/m\ :sup:`3`):

    - ``CHAN``: pipe ID;
* ``formula`` : expression, including signal IDs, arythmetic operations (``+``, ``-``, ``\*``, ``/``) and parenthesis.
* ``lookup``: lookup table:

    - ``TIME``: signal ID (x);
    - ``N`` pairs of numerical values ``x(i)`` and ``y(i)`` to approximate a function ``y = f(x)``. At every time step an output signal ``y`` is linearly interpolated for current value of the input signal ``x``.
* ``tclad`` : fuel rod clad average temperature (K);

    - ``FR`` : fuel rod ID.
* ``temp`` : average pipe or heat structure temperature (K);

    - ``CHAN``: pipe ID.
* ``tfuel`` : fuel rod fuel average temperature (K);

    - ``FR`` : fuel rod ID.
* ``time`` : time of the problem (s).

.. _input solve:

``solve`` : Model activation flag
---------------------------------
.. code-block:: text

    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9----  ----0----
    # Model activation flags</code
    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    #####     model
    solve     fluid
    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    #####     model
    solve     fuelrod
    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    #####     model
    solve     pointkinetics
    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    #####     model               ng         meth
    solve     eigenvalueproblem   25         DIF

* ``model`` : keyword of the model to be solved:

    - ``fluid`` : thermal-hydraulic model;
    - ``fuelrod`` : fuel rod behaviour model (``fluid`` should be activated);
    - ``pointkinetics`` : point reactor kinetics model;
    - ``eigenvalueproblem`` : eigenvalue problem model;

        * ``ng`` : number of energy groups;
        * ``meth`` : method used by an eigenvalue solver:
        
            - ``DIF`` : neutron diffusion method;
            - ``MC`` : Monte Carlo method.

Note that even if the respective cards are present in the input file, the task will not be solved unless activated by the ``solve`` card.

``t0`` : Initial time
---------------------
.. code-block:: text

    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code>
    # Initial time</code>
    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code>
    #####     tinit
    t0        0.0
    
``tinit`` : integration starting time (s).

``tend`` : Integration time set
-------------------------------
.. code-block:: text

    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code>
    # Integration time set</code>
    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code>
    #####     tend(s)
    tend      100
    tend      1000

``tend`` : end of integration time interval (s).

The given example specifies two integration time intervals: 1) from ``t0`` to 100 s and 2) from 100 s to 1000 s. The time steps inside the intervals are selected automatically by the ODE solver.

``tol`` : Required solution tolerance
-------------------------------------
.. code-block:: text

    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    # Required solution tolerance
    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    #####     rtol      atol
    tol       1e-6      1e-4

``rtol`` : relative tolerance;
``atol`` : absolute tolerance.
