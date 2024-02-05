Theory: Neutronics
==================

How to prepare cross sections?
------------------------------
To prepare the nuclear cross-section input files for ROOSTER follow these steps:

* For each isotope required in your model, download the Point-wise Evaluated Nuclear Data (PENDF) file. You can obtain these files from sources like the `IAEA Nuclear Data Services <https://www-nds.iaea.org/exfor/endf.htm>`_.\n

..

* Install the open-source LANL NJOY21 code, which is available at `NJOY21 GitHub repository <https://github.com/njoy/NJOY21>`_.

..


* Utilize NJOY21 to convert the PENDF files into GENDF files for each isotope. Here is an  :download:`example </_static/U238j311.inp>` of the input file for NJOY21 for the PENDF-to-GENDF conversion of the U-238 nuclear data from the JEFF3.1.1 library.

..


* Move all files in ROOSTER Nuclear Data Directory and specify its name in the input file card :ref:`input nddir`.

..


* Use the GENDF filenames in the fields ``isoid`` of the input file card :ref:`input mix` to specify homogeneous mix of isotopes.


How to build a core model?
--------------------------
The calculational area is divided in the nodes, i.e. square or hexagonal prisms with the same dimensions in the (x,y) surface and if necessary different axial heights. The image below shows the :ref:`Fig6d872d52`. Every node in the (x,y) surface corresponds to a subassembly.
Every color denotes a homogeneous material.

.. _Fig6d872d52:
.. figure:: _static/6d872d52.png
  :width: 100%
  :align: center

  Typical nodalisation for 60-deg symmetry sector of fast reactor core model

The core model is build in the following four steps:

* Specify the core geometry, using the input file card :ref:`input coregeom`.
* Specify homogeneous mixes of isotopes as specified in the previous section, using the input file card :ref:`input mix`.
* Create models of subassemblies using the input file cards :ref:`input stack`.
* Assemble stacks in the core using  the input file cards :ref:`input coremap`.


How to solve eigenvalue problem?
--------------------------------

Monte Carlo solver
^^^^^^^^^^^^^^^^^^

Finite-difference diffusion solver
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
