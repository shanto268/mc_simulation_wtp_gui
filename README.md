# Geant4 Program for Simulating the Water Tower Imaging Experiment and Testing the latest Prototype Design

### Current version: This configuration has the prototype 2 muon telescope with the latest water tower geometry

This directory has all the C++, ROOT, and GEANT4 code needed for the Monte Carlo simulation of our Muon Detector and the Water Tower at Reese Technology Center. There also the C++ code for the Muon Image and Track Analysis.

## EXPERIMENTAL OVERVIEW:
   
The High Energy Physics Group, led by Dr. Shuichi Kunori at Texas Tech University, has created a portable prototype
muon ray telescope which in the experiment is used to measure the muon flux at any given angle. Our experiment concerns with
the use of this telescope to create tomographical images; we point the telescope towards a Water Tower located at the Reese 
Technology Center and record the muon flux for a period of time. Using this data and the known behavior of muon physics, we 
generate a shadow image of the water tower. This image gives us information of the structural integrity of the water tower, 
which basically means we can infer the different materials used in the construction of the tower and the level of water inside 
the tower.

## PURPOSE OF MONTE CARLO:

The purpose of this program is to create a Monte Carlo simulation of this experiment. The program uses input from the 
Cosmic-Ray Shower Generator (CRY) module and processing engines from CERN's ROOT and GEANT4 libraries to recreate the 
experimental set up. The result of our program gives us insight about the efficiency of our muon telescope and test the 
integrity of our experimental data. We are constantly simulating different test cases for our simulation to learn more on how 
to make muon tomography more efficient and test out different materials and design to make a telescope with higher spatial 
resolution.

## Project Abstract
[Abstract](http://absimage.aps.org/image/TSF19/MWS_TSF19-2019-000018.pdf)

## Project Presentation Slides

[Poster 1: Presented at the Texas Section of the American Physical Society and Stanford University](https://0div0-content.s3.amazonaws.com/1f409cf42129432aa7ec545338ccaa07.pdf?AWSAccessKeyId=ASIATVY7X35OHLVRYBYV&Signature=K93Tr9aDCkoFN3kd0XPfztlGMLc%3D&x-amz-security-token=IQoJb3JpZ2luX2VjEBsaCXVzLXdlc3QtMiJHMEUCIQCPXGgg7s7%2Bj4qG6GcBNEF2xyOUnkYPljCM7XF6wVt4dwIgciCVrx1QG%2FfhC7alSoyKVGv%2FcLgMyA5OheMWik%2BLJhgqtAMIVBAAGgwyNTI5MzI3NzU3NzIiDDIr%2F9xApVpoYZtvqyqRA%2B2UnWWu8PI9AatHhi06DZHT2OMZKy%2Fke%2BCkF%2FXDKriHe%2FLBot7MGUPfu5k0j59s65XFyQ3G7YrH6AGEd17XDcfWLTQPUvg8rlJjsl8aeLh6d2NdYZPGareP1rlvB6L83yBhAUS6y51sUsMuOnSj8GN%2Bf%2BJIrmet28oxt5dpthJRPx5F6ZlEmXaT79N9%2Far2%2F7K64Aw%2BbCOFnEG6zmaTWoA59%2FEa7tgncDpFEkqD2nagG6QvAo0diy6hT2h9ZTCodsNxQ0MTG%2F5AGHA3HB4I1WWoBYR9teHaH1d0Ptc96jeczET0mgkdax%2BhBAo2EZV8cntz8yds8njo%2FM%2B43ZLElnbuHW4Cfj7Oy96ZgBgCjyk9CIoQypG8xsKnIqkB1PGdyutBO2AkrxBcTNL6ny2NMyt0eaL9E6UJKUQ5vjiG11rNiyAjcgT5cLpxJGRLjh7UaG23Oom%2FJ%2BfFfI%2FFjHejMsntsPC8AlGqFw0mt0i3hjhWLvGptY%2BFphrYlqLqmd%2FfkoFFcjQE8JMuSU39%2FYfF8BVPMMvruPUFOusBCvnDkl0Wges9OkrAlxMS0aixcrQ0yQoZg43Q0ARPzFQsWEMvSnJhohwkQL84EvmK7t0n9uQ9zxRoU9JtzSUeYwtfkLZ%2B3%2FeqITBw2idZZC3Txp7HaHpCQ8WMNQUMf3vbowl%2BU8UDm31tL7BjLjS7LMH9Bpbu6crra3XJxgVLsq550F5hsvoGcJ%2FrE88g%2Bz5THmR8xmDKJWDyaKoDKmyTHaROqKrLlNnTbbPIpFpenv7nXa8aCFR5rPGZZ9C2Lz8q7TwQNrMMeaETOClk%2Bku4nn46XC4HchdBgepBuRvH%2BIxENPukN1DRRUf7cA%3D%3D&Expires=1588735323)

[Poster 2: Presented at the Texas Tech Univerisity Undergraduate Research Conference and Rice University](https://www.depts.ttu.edu/true/undergraduate-research-conference/2020/poster-files/Poster_perez.pdf)

[Oral Presentation: Presented at the Texas Tech Univerisity Undergraduate Research Conference](https://www.depts.ttu.edu/true/undergraduate-research-conference/2020/oral-files/oral_Shanto.pdf)

## Project Paper
We were recently confirmed on our publication to the Journal of Undergraduate Reports in Physics. The link to the paper would be posted as soon as we the next issue comes out.

# RUNNING THE PROGRAM:

## To compile and run interactively:
* Download the repository.
* Import CRY variables
    * Download the CRY files and remember the installation directory
* Execute the environmnet variables
```bash
. muonSetup.sh
```
* Go into the build directory
```bash
cd build/
```
* Delete everything inside build directory
```bash
rm *
```
* Compile the source code
```bash
cmake ..
```
* Make executable
```bash
make
```
* Execute the program to start the simulation
```bash
./exampleb4a
```
## To start sim:
```bash
cd /sim/build
./exampleb4a
```

## To run batch job:
* Import CRY variables
* cd into the sim directory
```bash
cd sim\
```
* Execute the environmnet variables
```bash
. muonSetup.sh
```
* run the following shell script
```bash
. run_batch.sh
```

# Interactive Simulation 
Some example pictures showing the water tower, the telescope and the muon shower in the interactive simulation.

![base](base.png)

![shower](shower.png)

![shower1](shower2.png)

# Batch Mode Simulation
## Analysis of the physical processes

![1s](hadron.png)

![w2](materials.png)

![w23](neutron.png)

![1w23](params.png)


