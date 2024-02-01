Core cards
==========
``betaeff`` : Effective fractions of delayed neutrons
-----------------------------------------------------
.. code-block:: text

    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    # Beta-effective in 6 time groups
    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    betaeff   0.000285  0.0015975 0.00141   0.0030525 0.00096   0.000195  # a comment can also be put here

Number of values (i.e. number of the time groups) should be the same as in card ``dnplmb``.

``coregeom`` : Core geometry
----------------------------
.. code-block:: text

    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    # Core geometry
    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    #####     geometry  pitch(m)  botBC     topBC
    coregeom  hex06     0.18018   0         0

* ``geometry`` : flag of core geometry:

    - ``square`` : square geometry;
    - ``hex01`` : hexagonal geometry with 1 node per hexagon;
    - ``hex06`` : hexagonal geometry with 6 node per hexagon;
    - ``hex24`` : hexagonal geometry with 24 node per hexagon.

* ``pitch`` : distance between centers of nodes in plane (m);
* ``botBC`` : flag of bottom boundary conditions:

    - ``0`` : vacuum boundary condition
    - ``-1``: reflective boundary condition
* ``topBC`` : flag of top boundary conditions:

    - ``0`` : vacuum boundary condition
    - ``-1``: reflective boundary condition

``coremap`` : Core map
----------------------
.. code-block:: text

    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    # Core map
    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    coremap  0     0     0     0     0     0     0     0     0      #1
    coremap     0     0    SHI   SHI   SHI   SHI    0     0     0   #2
    coremap  0     0    SHI   BLA   BLA   BLA   SHI    0     0      #3
    coremap     0    SHI   BLA   FIS   FIS   BLA   SHI    0     0   #4
    coremap  0    SHI   BLA   FIS   FIS   FIS   BLA   SHI    0      #5
    coremap     0    SHI   BLA   FIS   FIS   BLA   SHI    0     0   #6
    coremap  0     0    SHI   BLA   BLA   BLA   SHI    0     0      #7
    coremap     0     0    SHI   SHI   SHI   SHI    0     0     0   #8
    coremap  0     0     0     0     0     0     0     0     0      #9

The ``coremap`` card defined one row of assemblies in the core and consists of either boundary condition flag (``0`` : vaccuum; ``1`` : reflective) or of a stack id (should appear in the ``stack`` card).

``dnplmb`` : Delayed neutron precursor decay time constants
-----------------------------------------------------------
.. code-block:: text

    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    # Delayed neutron precursor decay time constants in 6 time groups (1/s)
    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    dnplmb    0.0127    0.0317    0.115     0.311     1.4       3.87

Number of values (i.e. number of the time groups) should be the same as in card ``betaeff``.

``mix`` : Homogeneous mix of isotopes
-------------------------------------
.. code-block:: text

    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    # Mix: fuel in inner zone
    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    #####     id        isoid     numdens             sigtemp
    mix       INNER     U235j311  3.58838E-05         TEMP
    mix       INNER     U238j311  7.05072E-03         TEMP
    mix       INNER     Pu238j311 6.31883E-06         TEMP
    mix       INNER     Pu239j311 8.71553E-04         TEMP
    mix       INNER     Pu240j311 2.59858E-04         TEMP
    mix       INNER     Pu241j311 6.98635E-05         TEMP
    mix       INNER     Pu242j311 2.42475E-05         TEMP
    mix       INNER     Am241j311 1.70991E-05         TEMP
    mix       INNER     O16j311   1.65043E-02         TEMP
    mix       INNER     C0j311    4.75629E-05         TEMP
    mix       INNER     Si28j311  2.25772E-04         TEMP
    mix       INNER     Si29j311  1.10737E-05         TEMP
    mix       INNER     Si30j311  7.06525E-06         TEMP
    mix       INNER     P31j311   1.10562E-05         TEMP
    mix       INNER     Ti46j311  8.19752E-06         TEMP
    mix       INNER     Ti47j311  7.23535E-06         TEMP
    mix       INNER     Ti48j311  7.02030E-05         TEMP
    mix       INNER     Ti49j311  5.04663E-06         TEMP
    mix       INNER     Ti50j311  4.73566E-06         TEMP
    mix       INNER     Cr50j311  1.58887E-04         TEMP
    mix       INNER     Cr52j311  2.94632E-03         TEMP
    mix       INNER     Cr53j311  3.27778E-04         TEMP
    mix       INNER     Cr54j311  8.00808E-05         TEMP
    mix       INNER     Mn55j311  3.53226E-04         TEMP
    mix       INNER     Fe54j311  8.00560E-04         TEMP
    mix       INNER     Fe56j311  1.21188E-02         TEMP
    mix       INNER     Fe57j311  2.74958E-04         TEMP
    mix       INNER     Fe58j311  3.59615E-05         TEMP
    mix       INNER     Ni58j311  1.87786E-03         TEMP
    mix       INNER     Ni60j311  6.99261E-04         TEMP
    mix       INNER     Ni61j311  2.98974E-05         TEMP
    mix       INNER     Ni62j311  9.37938E-05         TEMP
    mix       INNER     Ni64j311  2.31362E-05         TEMP
    mix       INNER     Mo92j311  4.51168E-05         TEMP
    mix       INNER     Mo94j311  2.78070E-05         TEMP
    mix       INNER     Mo95j311  4.76300E-05         TEMP
    mix       INNER     Mo96j311  4.96037E-05         TEMP
    mix       INNER     Mo97j311  2.82709E-05         TEMP
    mix       INNER     Mo98j311  7.10924E-05         TEMP
    mix       INNER     Mo100j311 2.80498E-05         TEMP
    mix       INNER     Na23j311  7.63797E-03         TEMP
    mix       INNER     He4j311   6.11441E-07         TEMP

* ``id`` : user-defined id of the mix;
* ``isoid`` : id of the isotope; the GENDF file with this name should exist in nulcera data directory ``nddir``;
* ``numdens`` : number density of the isotope ``isoid`` in the mix ``id`` (barn\ :sup:`-1` cm\ :sup:`-1`);
* ``sigtemp`` : signal defining the temperature in K of the isotope ``isoid`` in the mix ``id``.

``nddir`` : Nuclear data directory
----------------------------------
.. code-block:: text

    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    # Nuclear data directory
    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    nddir     DATA25

``nddir`` : path to directory containing multigroup cross-section files in GENDF format.

``power0`` : Initial reactor power
----------------------------------
.. code-block:: text

    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    # Initial reactor power
    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    power0    2990.e6

``power0``: initial reactor power (W).

``stack`` : Vertical stack of homogeneous mixes
-----------------------------------------------
.. code-block:: text

    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    # Stack of mixes: fissile subassembly of inner zone
    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    #####     id        mixid     pipeid    pipenode
    stack     FIN       PLUG1     UP01      1 
    stack     FIN       GASPLE1   UP02      1 
    stack     FIN       GASPLE1   UP02      2 
    stack     FIN       GASPLE1   UP02      3 
    stack     FIN       GASPLE1   UP02      4 
    stack     FIN       GASPLE1   UP02      5 
    stack     FIN       GASPLE1   UP02      6 
    stack     FIN       GASPLE1   UP02      7 
    stack     FIN       GASPLE1   UP02      8 
    stack     FIN       GASPLE1   UP03      1 
    stack     FIN       GASPLE1   UP04      1 
    stack     FIN       SUPPOR1   UP05      1 
    stack     FIN       AXBLA     UP06      1 
    stack     FIN       AXBLA     UP06      2 
    stack     FIN       AXBLA     UP06      3 
    stack     FIN       AXBLA     UP06      4 
    stack     FIN       AXBLA     UP06      5 
    stack     FIN       AXBLA     UP06      6 
    stack     FIN       INNER     UP07      1 
    stack     FIN       INNER     UP07      2 
    stack     FIN       INNER     UP07      3 
    stack     FIN       INNER     UP07      4 
    stack     FIN       INNER     UP07      5 
    stack     FIN       INNER     UP07      6 
    stack     FIN       INNER     UP07      7 
    stack     FIN       INNER     UP07      8 
    stack     FIN       INNER     UP07      9 
    stack     FIN       INNER     UP07      10
    stack     FIN       INNER     UP07      11
    stack     FIN       INNER     UP07      12
    stack     FIN       INNER     UP07      13
    stack     FIN       INNER     UP07      14
    stack     FIN       INNER     UP07      15
    stack     FIN       INNER     UP07      16
    stack     FIN       INNER     UP07      17
    stack     FIN       INNER     UP07      18
    stack     FIN       INNER     UP07      19
    stack     FIN       INNER     UP07      20
    stack     FIN       AXBLA     UP08      1 
    stack     FIN       AXBLA     UP08      2 
    stack     FIN       AXBLA     UP08      4 
    stack     FIN       AXBLA     UP08      5 
    stack     FIN       AXBLA     UP08      6 
    stack     FIN       AXBLA     UP08      3 
    stack     FIN       GASPLE1   UP09      1 
    stack     FIN       GASPLE1   UP09      2 
    stack     FIN       PLUG1     UP10      1 
    stack     FIN       EMPTY     UP11      1 
    stack     FIN       EMPTY     UP11      2 
    stack     FIN       EMPTY     UP11      3 
    stack     FIN       OUTLET    UP12      1 
    stack     FIN       OUTLET    UP12      2 
    stack     FIN       OUTLET    UP12      3 
    stack     FIN       OUTLET    UP12      4 
    stack     FIN       OUTLET    UP12      5 
    stack     FIN       OUTLET    UP12      6 
    stack     FIN       OUTLET    UP12      7 
    stack     FIN       OUTLET    UP12      8 
    stack     FIN       OUTLET    UP12      9 
    stack     FIN       OUTLET    UP12      10

* ``id`` : user-defined id of the vertical stack of homogeneous mixes;
* ``mixid`` : user-defined id of the homogeneous mix of isotopes filling the node if the stack ``id`` (should appear in the ``mix`` card);
* ``pipeid`` : user-defined id of the pipe (should appear in the ``pipe`` card);
* ``pipenode`` : index of the node inside the thermal-hydraulic pipe defining the node of the stack ``id``.

Note: the stack represents a subassembly of the core. The axial nodalization of the stack is defined by linking every node of the stack with a pipe node.

``tlife`` : Prompt neutron lifetime
-----------------------------------
.. code-block:: text

    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    # Prompt neutron lifetime
    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    #####     tlife(s)
    tlife     0.0005

``tlife`` : prompt neutron lifetime (s).
