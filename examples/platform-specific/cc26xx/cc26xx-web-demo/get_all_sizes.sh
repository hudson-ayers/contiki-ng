#!/bin/bash
# This script prints the size in bytes of the binary that results when this
# app is compiled at each different capability level (0-5)
export CAP_LEVEL=0
LEVEL0="$(make clean >> /dev/null && make TARGET=srf06-cc26xx BOARD=launchpad/cc2650 >> /dev/null && size *.elf | awk 'NR==2{print $1; exit}')"
export CAP_LEVEL=1
LEVEL1="$(make clean >> /dev/null && make TARGET=srf06-cc26xx BOARD=launchpad/cc2650 >> /dev/null && size *.elf | awk 'NR==2{print $1; exit}')"
export CAP_LEVEL=2
LEVEL2="$(make clean >> /dev/null && make TARGET=srf06-cc26xx BOARD=launchpad/cc2650 >> /dev/null && size *.elf | awk 'NR==2{print $1; exit}')"
export CAP_LEVEL=3
LEVEL3="$(make clean >> /dev/null && make TARGET=srf06-cc26xx BOARD=launchpad/cc2650 >> /dev/null && size *.elf | awk 'NR==2{print $1; exit}')"
export CAP_LEVEL=4
LEVEL4="$(make clean >> /dev/null && make TARGET=srf06-cc26xx BOARD=launchpad/cc2650 >> /dev/null && size *.elf | awk 'NR==2{print $1; exit}')"
export CAP_LEVEL=5
LEVEL5="$(make clean >> /dev/null && make TARGET=srf06-cc26xx BOARD=launchpad/cc2650 >> /dev/null && size *.elf | awk 'NR==2{print $1; exit}')"
echo "${LEVEL0}"
echo "${LEVEL1}"
echo "${LEVEL2}"
echo "${LEVEL3}"
echo "${LEVEL4}"
echo "${LEVEL5}"
