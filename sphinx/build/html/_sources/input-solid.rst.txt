Solid Cards
===========
``clad`` : Cladding tube
------------------------
.. code-block:: text

    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    # Cladding tube
    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    #####     id        matid     ri(m)     ro(m)     nr
    clad      C01       SS1       4.1e-3    4.5e-3    3

* ``id`` : user-defined cladding tube id;
* ``matid`` : user-defined cladding tube material id (should appear in the ``mat`` card);
* ``ri`` : inner radius of cladding tube (m);
* ``ro`` : outer radius of cladding tube (m);
* ``nr`` : number of radial nodes.

``fuel`` : Fuel column
----------------------
.. code-block:: text

    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    # Fuel column
    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    #####     id        matid     ri(m)     ro(m)     nr
    fuel      F01       MOX1      1e-3      4e-3      20

* ``id`` : user-defined fuel column id;
* ``matid`` : user-defined fuel column material id  (should appear in the ``mat`` card);
* ``ri`` : inner radius of fuel column (m);
* ``ro`` : outer radius of fuel column (m); 
* ``nr`` : number of radial nodes.

``fuelrod`` : Fuel rod axial levels
-----------------------------------
.. code-block:: text

    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    # Fuel rod axial levels
    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    #####     id        fuelid    hgap      cladid    p2d       mltpl     pipeid    pipenode  kr        kz
    fuelrod   FR01      F01       0         C01       1.02      10        UP1       2         1.0       1.0
    fuelrod   FR01      F01       0         C01       1.02      10        UP1       3         1.0       1.0
    fuelrod   FR01      F01       0         C01       1.02      10        UP1       4         1.0       1.0
    fuelrod   FR01      F01       0         C01       1.02      10        UP1       5         1.0       1.0
    #
    fuelrod   FR02      F01       1000      C01       1.02      10        UP2       2         1.0       1.0
    fuelrod   FR02      F01       1000      C01       1.02      10        UP2       3         1.0       1.0
    fuelrod   FR02      F01       1000      C01       1.02      10        UP2       4         1.0       1.0
    fuelrod   FR02      F01       1000      C01       1.02      10        UP2       5         1.0       1.0

* ``id`` : user-defined id of fuel rod to which the axial layer belongs;
* ``fuelid`` : fuel column id defined in ``fuel`` card;
* ``hgap`` : fuel-clad gap conductance (W/m\ :sup:`2` K); if zero, the gap conductance is calculated by the code;
* ``cladid`` : clad tube id defined in ``clad`` card;
* ``p2d`` : pitch-to-diameter ratio of the fuel rod lattice; 
* ``mltpl`` : multiplicity of the heat exchange surface (actual number of fuel rods simulated by one).
* ``pipeid`` : thermal-hydraulic pipe id defined in the ``pipe`` card;
* ``pipenode`` : index of the node inside the thermal-hydraulic pipe coupled to the current fuel rod level;
* ``kr`` : radial power peaking factor;
* ``kz`` : axial power peaking factor.

``htstr`` : Heat structure
--------------------------
.. code-block:: text

    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    # Heat structure
    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    #####     id        matid     ri(m)     ro(m)     nr        bcleft    bcright   mltpl
    htstr     HS01      SS1       1e-2      1.1e-2    3         BC01      BC02      10

* ``id`` :  user-defined id of heat structure to which the axial layer belongs;
* ``matid`` : user-defined heat structure material id (should appear in the ``mat`` card);
* ``ri`` : inner radius of heat structure (m);
* ``ro`` : outer radius of heat structure (m);
* ``nr`` : number of radial nodes;
* ``bcleft`` : user-defined boundary condition id for the inner surface of the heat structure (should appear in the ``thermbc`` card);
* ``bcright`` : user-defined boundary condition id for the outer surface of the heat structure (should appear in the ``thermbc`` card);
* ``mltpl`` : multiplicity of the heat exchange surface (actual number of heat structures simulated by one).

``innergas`` : Fuel rod inner gas
---------------------------------
.. code-block:: text

    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    # Fuel rod inner gas
    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    #####     fuelrodid matid     plenv(m3)
    innergas  FR01      HE1       53e-6
    innergas  FR02      HE1       53e-6

* ``fuelrodid`` : id of fuel rod the inner gas belongs to;
* ``matid`` : user-defined inner gas material id (should appear in the ``mat`` card);
* ``plenv`` : volume of the gas plenum (m\ :sup:`3`).

``mat`` : Material
------------------
.. code-block:: text

    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    # Materials
    #---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----
    #####     id        type      p0(Pa)    temp0(K)
    mat       NA        na        1e5       673
    #####     id        type      pu(-)     b(MWD/kg) x(-)      por(-)    temp0(K)
    mat       MOX1      mox       0.15      0         0.02      0.05      673
    #####     id        type      temp0(K)
    mat       SS1       ss316     673
    #####     id        type      p0(Pa)    temp0(K)
    mat       HE1       he        1e6       673

* ``id`` : user-defined material id;
* ``type`` : material id

The other values depend on the material ``type``. The following materials are available in the coolant properties database:

* ``he`` : helium as an inner gas material of fuel rods;

    - ``p0`` : initial pressure (Pa)
    - ``temp0`` : initial temperature (K)

* ``mox`` : mixed U-Pu oxide as a fuel material of fuel rods;

    - ``pu`` : plutonium content (-)
    - ``b`` : burnup (MWd/kgHM)
    - ``x`` : deviation from stoichiometry (-)
    - ``por`` : porosity (-)
    - ``temp0`` : initial temperature (K)

* ``na`` : sodium as a coolant;

    - ``p0`` : initial pressure (Pa)
    - ``temp0`` : initial temperature (K)

* ``lbe`` : lead-bismuth eutectic as a coolant;

    - ``p0`` : initial pressure (Pa)
    - ``temp0`` : initial temperature (K)

* ``ss316`` : stainless steel 316 as a cladding material of fuel rods;

    - ``temp0`` : initial temperature (K)

* ``cu`` : copper as a core of heaters;

    - ``temp0`` : initial temperature (K)

* ``bn`` : boron nitride as an insulation material;

    - ``temp0`` : initial temperature (K)
