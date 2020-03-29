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
/vis/viewer/set/background 1.0 1.0 1.0
#/vis/viewer/set/viewpointThetaPhi 45.0 45.0
/vis/viewer/zoom 1.0
/vis/scene/add/axes 0 0 0 1 m
#/vis/scene/add/text 0 300 230 mm 8 0 0 s1
#/vis/scene/add/text 0 300 155 mm 8 0 0 s2
#/vis/scene/add/text 0 300 -170 mm 8 0 0 s3
#/vis/scene/add/text 0 300 -245 mm 8 0 0 s4
#/vis/scene/add/scale 20 cm y 1 0 0 manual 0 0 455 cm
#/vis/scene/add/scale 200 cm z 1 0 0 manual 0 15 350 cm
#/vis/scene/add/scale 350 cm z 1 0 0 manual 0 -35 175 cm
#/vis/scene/add/scale 23 cm z 1 0 0 manual 0 40 11.5 cm
#/vis/scene/add/scale 23 cm z 1 0 0 manual 0 -50 -11.5 cm
#/vis/scene/add/scale 17 cm z 1 0 0 manual 0 -40 8.5 cm
#/vis/scene/add/scale 17 cm z 1 0 0 manual 0 50 -8.5 cm
#/vis/scene/add/scale 60 cm y 1 0 0 manual 0 0 -26 cm
#/vis/scene/add/scale 50 cm y 1 0 0 manual 0 0 28 cm
#/vis/scene/add/scale 5 cm z 1 0 0 manual 0 20 17 cm
/vis/scene/add/text 0 1500 9200 mm 24 0 0 World
/vis/scene/add/text 0 300 6200 mm 24 0 0 SC8
/vis/scene/add/text 0 550 -400 mm 9 0 0 station
/run/initialize
#/run/beamOn 1 
/run/beamOn 10
# comment out "exit" in the next line, to keep the display window.
# exit
EOF
