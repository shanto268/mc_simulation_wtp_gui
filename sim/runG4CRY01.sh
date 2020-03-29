#$-V
#$-cwd
#$-S /bin/bash
#$-N g4cry_XXXXPARAM1
#$-o logs/$JOB_NAME.stdout$JOB_ID
#$-e logs/$JOB_NAME.stderr$JOB_ID
#$-q serial
#$-P grid

#   XSHFIT 0 for camera 1,  -40000 in mm= -40mm for camera 2, 40000 for camera 3
export G4CRYXSHIFT=0     # in mm
export G4CRYYSHIFT=0     # in mm
export G4CRYZSHIFT=6500  # in mm
export G4CRYPCUT=0    # in MeV
#export G4CRYOUTFILE=B4job1Room200cm100ev_XXXXPARAM1
export CRYRANDOMSEED=1234
# env

export DYLD_LIBRARY_PATH=/Applications/root_v6.16.00/lib

/Users/skunori/hep/g4/g4user/MuonSC8/v2/sim/Darwin-clang/exampleB4a <<EOF
/CRY/input returnMuons 1
/CRY/input returnNeutrons 0
/CRY/input returnProtons 0
/CRY/input returnGammas 0
/CRY/input returnPions 0
/CRY/input returnKaons 0
/CRY/input date 9-02-2016
/CRY/input latitude 36.339
/CRY/input altitude 0
/CRY/input subboxLength 1
/CRY/update  

# Initialize kernel
/vis/modeling/trajectories/drawByParticleID-0/set gamma red
/vis/modeling/trajectories/drawByParticleID-0/set e- blue
/vis/modeling/trajectories/drawByParticleID-0/set e+ red
/vis/modeling/trajectories/drawByParticleID-0/set mu+ magenta
/vis/modeling/trajectories/drawByParticleID-0/set mu- magenta
# /vis/modeling/trajectories/list
/run/beamOn 10
# comment out "exit" in the next line, to keep the display window.
# exit
/vis/enable
/vis/viewer/flush
EOF
