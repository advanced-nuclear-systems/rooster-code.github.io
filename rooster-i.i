            <!-- Header-->
            <header class="py-5">
                <div class="container px-5">
                    <div class="row gx-5 align-items-center justify-content-center">
                        <div class="col-lg-8 col-xl-7 col-xxl-6">
                            <div class="my-5 text-xl-start">
                                <h1 class="display-5 fw-bolder text-dark mb-2">Input description</h1>
<div class="lead">
The input file should have name <code>input</code>. 
It consists of lines (cards) identified by keywords. 
The card are presented below by examples in alphabetical order of the keywords. 
All numerical values and upper-case words are specified by users. 
The low-case words are keywords and should not be changed.
The colour code indicates the class to which the card "belongs": <code style='background-color:#ccfdcc;'>Control</code>, <code style='background-color:#cdeefd;'>Fluid</code>, <code style='background-color:#fadadd;'>Core</code> and <code style='background-color:#ccc;'>Solid</code>.
</div><br>
<!------------------------------------------------------------------------------------------------>
<div class="lead" style='background-color:#ccfdcc; border-top:1px solid black; font-weight:bold'><code>*</code> : Comment</div>
<code>* A line started with an asterisk is considered a comment.</code><br>
<br>
<!------------------------------------------------------------------------------------------------>
<div class="lead" style='background-color:#ccfdcc; border-top:1px solid black; font-weight:bold'><code>&</code> : Line continuation</div>
<code>* An ampersand symbol at the end of the line &<br> is a line continuation symbol.</code><br>
<br>
<!------------------------------------------------------------------------------------------------>
<div class="lead" style='background-color:#fadadd; border-top:1px solid black; font-weight:bold'><code>betaeff</code> : Effective fractions of delayed neutrons</div>
<code style='white-space:nowrap;'>*---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code><br>
<code>* Beta-effective in 6 time groups</code><br>
<code style='white-space:nowrap;'>*---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code>
<pre style='margin:0;'><code>betaeff   0.000285  0.0015975 0.00141   0.0030525 0.00096   0.000195  * a comment can also be put here</code></pre><br>
<div class="lead">Number of values (i.e. number of the time groups) should be the same as in card <code>dnplmb</code>.</div>
<br>
<!------------------------------------------------------------------------------------------------>
<div class="lead" style='background-color:#ccc; border-top:1px solid black; font-weight:bold'><code>clad</code> : Cladding tube</div>
<code style='white-space:nowrap;'>*---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code><br>
<code>* Cladding tube</code><br>
<code style='white-space:nowrap;'>*---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code><br>
<pre style='margin:0;'><code>*****     id        matid     ri(m)     ro(m)     nr</code></pre>
<pre style='margin:0;'><code>clad      C01       SS1       4.1e-3    4.5e-3    3</code></pre>
<br>
<div class="lead"><code>id</code> : user-defined cladding tube id;</div>
<div class="lead"><code>matid</code> : user-defined cladding tube material id (should appear in the <code>mat</code> card);</div>
<div class="lead"><code>ri</code> : inner radius of cladding tube (m);</div>
<div class="lead"><code>ro</code> : outer radius of cladding tube (m); </div>
<div class="lead"><code>nr</code> : number of radial nodes.</div>
<br>
<!------------------------------------------------------------------------------------------------>
<div class="lead" style='background-color:#fadadd; border-top:1px solid black; font-weight:bold'><code>dnplmb</code> : Delayed neutron precursor decay time constants</div>
<code style='white-space:nowrap;'>*---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code><br>
<code>* Delayed neutron precursor decay time constants in 6 time groups (1/s)</code><br>
<code style='white-space:nowrap;'>*---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code><br>
<pre style='margin:0;'><code>dnplmb    0.0127    0.0317    0.115     0.311     1.4       3.87</code></pre>
<br>
<div class="lead">Number of values (i.e. number of the time groups) should be the same as in card <code>betaeff</code>.</div>
<br>
<!------------------------------------------------------------------------------------------------>
<div class="lead" style='background-color:#ccc; border-top:1px solid black; font-weight:bold'><code>fuel</code> : Fuel column</div>
<code style='white-space:nowrap;'>*---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code><br>
<code>* Fuel column</code><br>
<code style='white-space:nowrap;'>*---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code><br>
<pre style='margin:0;'><code>*****     id        matid     ri(m)     ro(m)     nr</code></pre>
<pre style='margin:0;'><code>fuel      F01       MOX1      1e-3      4e-3      20</code></pre>
<br>
<div class="lead"><code>id</code> : user-defined fuel column id;</div>
<div class="lead"><code>matid</code> : user-defined fuel column material id  (should appear in the <code>mat</code> card);</div>
<div class="lead"><code>ri</code> : inner radius of fuel column (m);</div>
<div class="lead"><code>ro</code> : outer radius of fuel column (m); </div>
<div class="lead"><code>nr</code> : number of radial nodes.</div>
<br>
<!------------------------------------------------------------------------------------------------>
<div class="lead" style='background-color:#ccc; border-top:1px solid black; font-weight:bold'><code>fuelrod</code> : Fuel rod axial levels</div>
<code style='white-space:nowrap;'>*---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code><br>
<code>* Fuel rod axial levels</code><br>
<code style='white-space:nowrap;'>*---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code><br>
<pre style='margin:0;'><code>*****     id        fuelid    hgap      cladid    p2d       mltpl     pipeid    pipenodeid</code></pre>
<pre style='margin:0;'><code>fuelrod   FR01      F01       0         C01       1.02      10        UP1       2</code></pre>
<pre style='margin:0;'><code>fuelrod   FR01      F01       0         C01       1.02      10        UP1       3</code></pre>
<pre style='margin:0;'><code>fuelrod   FR01      F01       0         C01       1.02      10        UP1       4</code></pre>
<pre style='margin:0;'><code>fuelrod   FR01      F01       0         C01       1.02      10        UP1       5</code></pre>
<pre style='margin:0;'><code>*</code></pre>
<pre style='margin:0;'><code>fuelrod   FR02      F01       1000      C01       1.02      10        UP2       2</code></pre>
<pre style='margin:0;'><code>fuelrod   FR02      F01       1000      C01       1.02      10        UP2       3</code></pre>
<pre style='margin:0;'><code>fuelrod   FR02      F01       1000      C01       1.02      10        UP2       4</code></pre>
<pre style='margin:0;'><code>fuelrod   FR02      F01       1000      C01       1.02      10        UP2       5</code></pre>
<br>
<div class="lead"><code>id</code> : user-defined id of fuel rod to which the axial layer belongs;</div>
<div class="lead"><code>fuelid</code> : fuel column id defined in <code>fuel</code> card;</div>
<div class="lead"><code>hgap</code> : fuel-clad gap conductance (W/m<sup>2</sup>K); if zero, the gap conductance is calculated by the code;</div>
<div class="lead"><code>cladid</code> : clad tube id defined in <code>clad</code> card;</div>
<div class="lead"><code>p2d</code> : pitch-to-diameter ratio of the fuel rod lattice; </div>
<div class="lead"><code>mltpl</code> : multiplicity of the heat exchange surface (actual number of fuel rods simulated by one).</div>
<div class="lead"><code>pipeid</code> : thermal-hydraulic pipe id defined in the <code>pipe</code> card;</div>
<div class="lead"><code>pipenodeid</code> : index of the node inside the thermal-hydraulic pipe coupled to the current fuel rod level.</div>
<br>
<!------------------------------------------------------------------------------------------------>
<div class="lead" style='background-color:#ccc; border-top:1px solid black; font-weight:bold'><code>innergas</code> : Fuel rod inner gas</div>
<code style='white-space:nowrap;'>*---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code><br>
<code>* Fuel rod inner gas</code><br>
<code style='white-space:nowrap;'>*---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code><br>
<pre style='margin:0;'><code>*****     fuelrodid matid     plenv(m3)</code></pre>
<pre style='margin:0;'><code>innergas  FR01      HE1       53e-6</code></pre>
<pre style='margin:0;'><code>innergas  FR02      HE1       53e-6</code></pre>
<br>
<div class="lead"><code>fuelrodid</code> : id of fuel rod the inner gas belongs to;</div>
<div class="lead"><code>matid</code> : user-defined inner gas material id (should appear in the <code>mat</code> card);</div>
<div class="lead"><code>plenv</code> : volume of the gas plenum (m<sup>3</sup>);</div>
<br>
<!------------------------------------------------------------------------------------------------>
<div class="lead" style='background-color:#cdeefd; border-top:1px solid black; font-weight:bold'><code>jun</code> : Dependent junction</div>
<code style='white-space:nowrap;'>*---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code><br>
<code>* Dependent junction</code><br>
<code style='white-space:nowrap;'>*---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code><br>
<pre style='margin:0;'><code>*****     from      to</code></pre>
<pre style='margin:0;'><code>jun       UP1       PLN</code></pre>
<pre style='margin:0;'><code>jun       DOWN      UP2</code></pre>
<pre style='margin:0;'><code>jun       UP2       PLN</code></pre>
<br>
<div class="lead">A junction connects two pipes:</div>
<div class="lead"><code>from</code> : id of the user-defined pipe id the junction comes from;</div>
<div class="lead"><code>to</code> : id of the user-defined pipe id the junction comes to.</div>
<br>
<div class="lead">The mass flowrate in the dependent junction could be found from mass flowrates in independent juntions.</div>
<br>
<!------------------------------------------------------------------------------------------------>
<div class="lead" style='background-color:#cdeefd; border-top:1px solid black; font-weight:bold'><code>jun-i</code> : Independent junction</div>
<code style='white-space:nowrap;'>*---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code><br>
<code>* Inependent junction</code><br>
<code style='white-space:nowrap;'>*---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code><br>
<pre style='margin:0;'><code>*****     from      to</code></pre>
<pre style='margin:0;'><code>jun-i     PLN       DOWN</code></pre>
<br>
<div class="lead">A junction connects two pipes:</div>
<div class="lead"><code>from</code> : id of the user-defined pipe id the junction comes from;</div>
<div class="lead"><code>to</code> : id of the user-defined pipe id the junction comes to.</div>
<br>
<div class="lead">The mass flowrate in the dependent junction could be found from mass flowrates in independent juntions which found by integration of the momentum conservation equations.</div>
<br>
<!------------------------------------------------------------------------------------------------>
<div class="lead" style='background-color:#cdeefd; border-top:1px solid black; font-weight:bold'><code>jun-i-f</code> : Independent junction with user-defined flowrate</div>
<code style='white-space:nowrap;'>*---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code><br>
<code>* Inependent junction with user-defined flowrate</code><br>
<code style='white-space:nowrap;'>*---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code><br>
<pre style='margin:0;'><code>*****     from      to        signal</code></pre>
<pre style='margin:0;'><code>jun-i-f   DOWN      UP1       MDOT_VS_T</code></pre>
<br>
<div class="lead">A junction connects two pipes:</div>
<div class="lead"><code>from</code> : id of the user-defined pipe id the junction comes from;</div>
<div class="lead"><code>to</code> : id of the user-defined pipe id the junction comes to.</div>
<div class="lead"><code>signal</code> : id of the user-defined signal of flowrate in the junction.</div>
<br>
<div class="lead">The mass flowrate in the dependent junction could be found from mass flowrates in independent juntions which found by integration of the momentum conservation equations. In case of the independent junction with user-defined flowrate, the time derivative of mass flowrate is set to zero and flowrate is set equal to the specified signal at the current time step.</div>
<br>
<!------------------------------------------------------------------------------------------------>
<div class="lead" style='background-color:#cdeefd; border-top:1px solid black; font-weight:bold'><code>jun-i-p</code> : Independent junction with user-defined pump head</div>
<code style='white-space:nowrap;'>*---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code><br>
<code>* Inependent junction with user-defined pump head</code><br>
<code style='white-space:nowrap;'>*---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code><br>
<pre style='margin:0;'><code>*****     from      to        signal</code></pre>
<pre style='margin:0;'><code>jun-i-p   PLN       DOWN      PMPHEAD_VS_T</code></pre>
<br>
<div class="lead">A junction connects two pipes:</div>
<div class="lead"><code>from</code> : id of the user-defined pipe id the junction comes from;</div>
<div class="lead"><code>to</code> : id of the user-defined pipe id the junction comes to.</div>
<div class="lead"><code>signal</code> : id of the user-defined signal of pump head in the junction.</div>
<br>
<div class="lead">The mass flowrate in the dependent junction could be found from mass flowrates in independent juntions which found by integration of the momentum conservation equations. In case of the independent junction with user-defined pump head, the specifieed signal at the current time step is added to the right-hand side of the momentum conservation equation.</div>
<br>
<!------------------------------------------------------------------------------------------------>
<div class="lead" style='background-color:#ccfdcc; border-top:1px solid black; font-weight:bold'><code>lookup</code> : Lookup table control block</div>
<code style='white-space:nowrap;'>*---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code><br>
<code style='white-space:nowrap;'>* Lookup table: pump head in junction vs time</code><br>
<code style='white-space:nowrap;'>*---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code><br>
<pre style='margin:0;'><code>*****     insignal  outsignal</code></pre>
<pre style='margin:0;'><code>lookup    TIME      PMPHEAD_VS_T &</code></pre>
<pre style='margin:0;'><code>          0.0       0 &</code></pre>
<pre style='margin:0;'><code>          10.0      1e5</code></pre>
<code style='white-space:nowrap;'>*</code><br>
<code style='white-space:nowrap;'>*---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code><br>
<code style='white-space:nowrap;'>* Lookup table: flowrate in junction vs time</code><br>
<code style='white-space:nowrap;'>*---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code><br>
<pre style='margin:0;'><code>*****     insignal  outsignal</code></pre>
<pre style='margin:0;'><code>lookup    TIME      MDOT_VS_T &</code></pre>
<pre style='margin:0;'><code>          0.0       0 &</code></pre>
<pre style='margin:0;'><code>          10.0      10</code></pre>
<code style='white-space:nowrap;'>*</code><br>
<code style='white-space:nowrap;'>*---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code><br>
<code style='white-space:nowrap;'>* Lookup table: temperature in pipe node vs time</code><br>
<code style='white-space:nowrap;'>*---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code><br>
<pre style='margin:0;'><code>*****     insignal  outsignal</code></pre>
<pre style='margin:0;'><code>lookup    TIME      TEMP_VS_T &</code></pre>
<pre style='margin:0;'><code>          0.0       0 &</code></pre>
<pre style='margin:0;'><code>          10.0      700</code></pre>
<br>
<div class="lead">The control block is specified by a list of pairs starting with:</div>
<br>
<div class="lead"><code>insignal</code> : id of the input signal <code>x</code> which is either defined in the <code>signal</code> card or the output signal of another control block and</div>
<div class="lead"><code>outsignal</code> : id of the output signal <code>y</code></div>
<br>
<div class="lead">and followed by <code>N</code> pairs of numerical values <code>x(i)</code> and <code>y(i)</code> to approximate a function <code>y = f(x)</code>. At every time step an output signal <code>y</code> is linearly interpolated for current value of the input signal <code>x</code>.</div>
<br>
<!------------------------------------------------------------------------------------------------>
<div class="lead" style='background-color:#ccc; border-top:1px solid black; font-weight:bold'><code>mat</code> : Material</div>
<code style='white-space:nowrap;'>*---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code><br>
<code>* Materials</code><br>
<code style='white-space:nowrap;'>*---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code><br>
<pre style='margin:0;'><code>*****     id        type      p0(Pa)    temp0(K)</code></pre>
<pre style='margin:0;'><code>mat       NA        na        1e5       673</code></pre>
<pre style='margin:0;'><code>*****     id        type      pu(-)     b(MWD/kg) x(-)      por(-)    temp0(K)</code></pre>
<pre style='margin:0;'><code>mat       MOX1      mox       0.15      0         0.02      0.05      673</code></pre>
<pre style='margin:0;'><code>*****     id        type      temp0(K)</code></pre>
<pre style='margin:0;'><code>mat       SS1       ss316     673</code></pre>
<pre style='margin:0;'><code>*****     id        type      p0(Pa)    temp0(K)</code></pre>
<pre style='margin:0;'><code>mat       HE1       he        1e6       673</code></pre>
<br>
<div class="lead"><code>id</code> : user-defined material id;</div>
<div class="lead"><code>type</code> : material id</div>
<div class="lead">The other values depend on the material <code>type</code>. The following materials are available in the coolant properties database:</div>

<div class="lead"><code>he</code> : helium as an inner gas material of fuel rods;</div>
<div class="lead" style='margin:0 0 0 20px'> 
   <div class="lead"><code>p0</code> : initial pressure (Pa)</div>
   <div class="lead"><code>temp0</code> : initial temperature (K)</div>
</div>

<div class="lead"><code>mox</code> : mixed U-Pu oxide as a fuel material of fuel rods;</div>
<div class="lead" style='margin:0 0 0 20px'> 
   <div class="lead"><code>pu</code> : plutonium content (-)</div>
   <div class="lead"><code>b</code> : burnup (MWd/kgHM)</div>
   <div class="lead"><code>x</code> : deviation from stoichiometry (-)</div>
   <div class="lead"><code>por</code> : porosity (-)</div>
   <div class="lead"><code>temp0</code> : initial temperature (K)</div>
</div>

<div class="lead"><code>na</code> : sodium as a coolant;</div>
<div class="lead" style='margin:0 0 0 20px'> 
   <div class="lead"><code>p0</code> : initial pressure (Pa)</div>
   <div class="lead"><code>temp0</code> : initial temperature (K)</div>
</div>

<div class="lead"><code>ss316</code> : stainless steel 316 as a cladding material of fuel rods;</div>
<div class="lead" style='margin:0 0 0 20px'> 
   <div class="lead"><code>temp0</code> : initial temperature (K)</div>
</div>
<br>
<!------------------------------------------------------------------------------------------------>
<div class="lead" style='background-color:#cdeefd; border-top:1px solid black; font-weight:bold'><code>pipe</code> : Pipe without free level</div>
<code style='white-space:nowrap;'>*---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code><br>
<code>* Pipes</code><br>
<code style='white-space:nowrap;'>*---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code><br>
<pre style='margin:0;'><code>*****     id        matid     dhyd(m)   len(m)    dir(-)    areaz(m2) nnodes</code></pre>
<pre style='margin:0;'><code>pipe      UP1       NA        0.01      1.0       1.0       1.1       10</code></pre>
<br>
<div class="lead"><code>id</code> : user-defined pipe id;</div>
<div class="lead"><code>matid</code> : user-defined material id (should appear in the <code>mat</code> card);</div>
<div class="lead"><code>dhyd</code> : hydraulic diameter (m);</div>
<div class="lead"><code>len</code> : pipe length (m);</div>
<div class="lead"><code>dir</code> : pipe direction: from -1.0 (downward) up to 1.0 (upward) (-);</div>
<div class="lead"><code>areaz</code> : flow area (m<sup>2</sup>);</div>
<div class="lead"><code>nnodes</code> : number of nodes.</div>
<br>
<!------------------------------------------------------------------------------------------------>
<div class="lead" style='background-color:#cdeefd; border-top:1px solid black; font-weight:bold'><code>pipe-f</code> : Pipe with free level</div>
<code style='white-space:nowrap;'>*---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code><br>
<code>* Pipe with free level</code><br>
<code style='white-space:nowrap;'>*---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code><br>
<pre style='margin:0;'><code>*****     id        matid     dhyd(m)   len(m)    areaz(m2)</code></pre>
<pre style='margin:0;'><code>pipe-f    PLN       NA        0.1       1.0       1.1</code></pre>
<br>
<div class="lead"><code>id</code> : user-defined pipe id;</div>
<div class="lead"><code>matid</code> : user-defined material id (should appear in the <code>mat</code> card);</div>
<div class="lead"><code>dhyd</code> : hydraulic diameter (m);</div>
<div class="lead"><code>len</code> : pipe length (m);</div>
<div class="lead"><code>areaz</code> : flow area (m<sup>2</sup>).</div>
<br>
<div class="lead">A pipe with free level has always one node.</div>
<br>
<!------------------------------------------------------------------------------------------------>
<div class="lead" style='background-color:#cdeefd; border-top:1px solid black; font-weight:bold'><code>pipe-t</code> : Pipe without free level with temperature defined by signal</div>
<code style='white-space:nowrap;'>*---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code><br>
<code>* Pipe with user-defined temperature</code><br>
<code style='white-space:nowrap;'>*---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code><br>
<pre style='margin:0;'><code>*****     id        matid     dhyd(m)   len(m)    dir(-)    areaz(m2) nnodes    signal</code></pre>
<pre style='margin:0;'><code>pipe-t    DOWN      NA        0.01      1.0       -1.0      1.1       10        TEMP_VS_T</code></pre>
<br>
<div class="lead"><code>id</code> : user-defined pipe id;</div>
<div class="lead"><code>matid</code> : user-defined material id (should appear in the <code>mat</code> card);</div>
<div class="lead"><code>dhyd</code> : hydraulic diameter (m);</div>
<div class="lead"><code>len</code> : pipe length (m);</div>
<div class="lead"><code>dir</code> : pipe direction: from -1.0 (downward) up to 1.0 (upward) (-);</div>
<div class="lead"><code>areaz</code> : flow area (m<sup>2</sup>);</div>
<div class="lead"><code>nnodes</code> : number of nodes;</div>
<div class="lead"><code>signal</code> : id of the signal specifying temperature in all nodes of the pipe.</div>
<br>
<div class="lead">The time derivative of temperature in every node of the pipe is set to zero and temperature is set equal to the specified signal at the current time step.</div>
<br>
<!------------------------------------------------------------------------------------------------>
<div class="lead" style='background-color:#ccfdcc; border-top:1px solid black; font-weight:bold'><code>signal</code> : User-defined signal</div>
<code style='white-space:nowrap;'>*---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code><br>
<code style='white-space:nowrap;'>* Signals</code><br>
<code style='white-space:nowrap;'>*---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code><br>
<pre style='margin:0;'><code>*****     id        value</code></pre>
<pre style='margin:0;'><code>signal    TIME      time</code></pre>
<pre style='margin:0;'><code>signal    PI        3.14159</code></pre>
<br>
<div class="lead"><code>id</code>: user-defined signal id;</div>
<div class="lead"><code>type</code>: signal value.</div>
<br>
<div class="lead">Currently available signals (under development):</div>
   <div class="lead" style='margin:0 0 0 20px'>
   <div class="lead"><code>0.0</code>: any constant numeric value;</div>
   <div class="lead"><code>time</code>: time of the problem(s).</div>
</div>
<br>
<!------------------------------------------------------------------------------------------------>
<div class="lead" style='background-color:#ccfdcc; border-top:1px solid black; font-weight:bold'><code>solve</code> : Model activation flag</div>
<code style='white-space:nowrap;'>*---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code><br>
<code style='white-space:nowrap;'>* Model activation flags</code><br>
<code style='white-space:nowrap;'>*---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code><br>
<pre style='margin:0;'><code>*****     model</code></pre>
<pre style='margin:0;'><code>solve     fgrain</code></pre>
<code style='white-space:nowrap;'>*---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code><br>
<pre style='margin:0;'><code>*****     model</code></pre>
<pre style='margin:0;'><code>solve     fluid</code></pre>
<code style='white-space:nowrap;'>*---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code><br>
<pre style='margin:0;'><code>*****     model</code></pre>
<pre style='margin:0;'><code>solve     fuelrod</code></pre>
<code style='white-space:nowrap;'>*---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code><br>
<pre style='margin:0;'><code>*****     model</code></pre>
<pre style='margin:0;'><code>solve     pointkinetics</code></pre>
<code style='white-space:nowrap;'>*---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code><br>
<pre style='margin:0;'><code>*****     model               ng</code></pre>
<pre style='margin:0;'><code>solve     spatialkinetics     25</code></pre>
<br>
<div class="lead"><code>model</code>: keyword of the model to be solved:</div>
<div class="lead" style='margin:0 0 0 20px'>
   <div class="lead"><code>fgrain</code>: fission gas behaviour model (under development);</div>
   <div class="lead"><code>fluid</code> : thermal-hydraulic model;</div>
   <div class="lead"><code>fuelrod</code> : fuel rod behaviour model (<code>fluid</code> should be activated);</div>
   <div class="lead"><code>pointkinetics</code> : point reactor kinetics model;</div>
   <div class="lead"><code>spatialkinetics</code> : spatial reactor kinetics model;</div>
   <div class="lead" style='margin:0 0 0 20px'>
      <div class="lead"><code>ng</code> : number of energy groups.</div>
   </div>
</div>
<br>
<div class="lead">Note that even if the respective cards are present in the input file, the task will not be solved unless activated by the <code>solve</code> card.</div>
<br>
<!------------------------------------------------------------------------------------------------>
<div class="lead" style='background-color:#ccfdcc; border-top:1px solid black; font-weight:bold'><code>t0</code> : Initial time</div>
<code style='white-space:nowrap;'>*---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code><br>
<code style='white-space:nowrap;'>* Initial time</code><br>
<code style='white-space:nowrap;'>*---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code><br>
<pre style='margin:0;'><code>*****     tinit</code></pre>
<pre style='margin:0;'><code>t0        0.0</code></pre>
<br>
<div class="lead"><code>tinit</code>: integration starting time (s).</div>
<br>
<!------------------------------------------------------------------------------------------------>
<div class="lead" style='background-color:#ccfdcc; border-top:1px solid black; font-weight:bold'><code>t_dt</code> : Integration time set</div>
<code style='white-space:nowrap;'>*---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code><br>
<code style='white-space:nowrap;'>* Integration time set</code><br>
<code style='white-space:nowrap;'>*---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code><br>
<pre style='margin:0;'><code>*****     tend(s)   dt(s)</code></pre>
<pre style='margin:0;'><code>t_dt      100       1</code></pre>
<pre style='margin:0;'><code>t_dt      1000      10</code></pre>
<br>
<div class="lead"><code>tend</code>: end of integration time interval (s);</div>
<div class="lead"><code>dt</code>: output time step for the current integration interval (s).</div>
<br>
<div class="lead">The given example specifies two integration time intervals: 1) from <code>t0</code> to 100 s with output at every second and 2) from 100 s to 1000 s with output every 10 s.</div>
<br>
<!------------------------------------------------------------------------------------------------>
<div class="lead" style='background-color:#fadadd; border-top:1px solid black; font-weight:bold'><code>tlife</code> : Prompt neutron lifetime</div>
<code style='white-space:nowrap;'>*---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code><br>
<code>* Prompt neutron lifetime</code><br>
<code style='white-space:nowrap;'>*---- ----1---- ----2---- ----3---- ----4---- ----5---- ----6---- ----7---- ----8---- ----9---- ----0----</code>
<pre style='margin:0;'><code>*****     tlife(s)</code></pre>
<pre style='margin:0;'><code>tlife     0.0005</code></pre><br>
<br>
<div class="lead"><code>tlife</code>: prompt neutron lifetime (s).</div>
<br>
                            </div>
                        </div>
                    </div>
                </div>
            </header>