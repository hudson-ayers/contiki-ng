#!/bin/bash
# This script prints the size in bytes of the binary that results when this
# app is compiled at each different capability level (0-5)
export ICMP_MSGS=0
export ND_MSGS=0
export SEND_REDUCED=0
export CAP_LEVEL=0
LEVEL0_0_0="$(make clean >> /dev/null && make TARGET=srf06-cc26xx BOARD=launchpad/cc2650 >> /dev/null && size *.elf | awk 'NR==2{print $1; exit}')"
export CAP_LEVEL=1
LEVEL1_0_0="$(make clean >> /dev/null && make TARGET=srf06-cc26xx BOARD=launchpad/cc2650 >> /dev/null && size *.elf | awk 'NR==2{print $1; exit}')"
export CAP_LEVEL=2
LEVEL2_0_0="$(make clean >> /dev/null && make TARGET=srf06-cc26xx BOARD=launchpad/cc2650 >> /dev/null && size *.elf | awk 'NR==2{print $1; exit}')"
export CAP_LEVEL=3
LEVEL3_0_0="$(make clean >> /dev/null && make TARGET=srf06-cc26xx BOARD=launchpad/cc2650 >> /dev/null && size *.elf | awk 'NR==2{print $1; exit}')"
export CAP_LEVEL=4
LEVEL4_0_0="$(make clean >> /dev/null && make TARGET=srf06-cc26xx BOARD=launchpad/cc2650 >> /dev/null && size *.elf | awk 'NR==2{print $1; exit}')"
export CAP_LEVEL=5
LEVEL5_0_0="$(make clean >> /dev/null && make TARGET=srf06-cc26xx BOARD=launchpad/cc2650 >> /dev/null && size *.elf | awk 'NR==2{print $1; exit}')"
# Now get sizes with icmp messages on
echo "Code sizes without ICMP error messages or ND messages:"
echo "${LEVEL0_0_0}"
echo "${LEVEL1_0_0}"
echo "${LEVEL2_0_0}"
echo "${LEVEL3_0_0}"
echo "${LEVEL4_0_0}"
echo "${LEVEL5_0_0}"
export ICMP_MSGS=1
export CAP_LEVEL=0
LEVEL0_1_0="$(make clean >> /dev/null && make TARGET=srf06-cc26xx BOARD=launchpad/cc2650 >> /dev/null && size *.elf | awk 'NR==2{print $1; exit}')"
export CAP_LEVEL=1
LEVEL1_1_0="$(make clean >> /dev/null && make TARGET=srf06-cc26xx BOARD=launchpad/cc2650 >> /dev/null && size *.elf | awk 'NR==2{print $1; exit}')"
export CAP_LEVEL=2
LEVEL2_1_0="$(make clean >> /dev/null && make TARGET=srf06-cc26xx BOARD=launchpad/cc2650 >> /dev/null && size *.elf | awk 'NR==2{print $1; exit}')"
export CAP_LEVEL=3
LEVEL3_1_0="$(make clean >> /dev/null && make TARGET=srf06-cc26xx BOARD=launchpad/cc2650 >> /dev/null && size *.elf | awk 'NR==2{print $1; exit}')"
export CAP_LEVEL=4
LEVEL4_1_0="$(make clean >> /dev/null && make TARGET=srf06-cc26xx BOARD=launchpad/cc2650 >> /dev/null && size *.elf | awk 'NR==2{print $1; exit}')"
export CAP_LEVEL=5
LEVEL5_1_0="$(make clean >> /dev/null && make TARGET=srf06-cc26xx BOARD=launchpad/cc2650 >> /dev/null && size *.elf | awk 'NR==2{print $1; exit}')"
echo "Code sizes with ICMP error messages and no reduced send and no ND messages:"
echo "${LEVEL0_1_0}"
echo "${LEVEL1_1_0}"
echo "${LEVEL2_1_0}"
echo "${LEVEL3_1_0}"
echo "${LEVEL4_1_0}"
echo "${LEVEL5_1_0}"

export SEND_REDUCED=1
export CAP_LEVEL=0
LEVEL0_1_0_1="$(make clean >> /dev/null && make TARGET=srf06-cc26xx BOARD=launchpad/cc2650 >> /dev/null && size *.elf | awk 'NR==2{print $1; exit}')"
export CAP_LEVEL=1
LEVEL1_1_0_1="$(make clean >> /dev/null && make TARGET=srf06-cc26xx BOARD=launchpad/cc2650 >> /dev/null && size *.elf | awk 'NR==2{print $1; exit}')"
export CAP_LEVEL=2
LEVEL2_1_0_1="$(make clean >> /dev/null && make TARGET=srf06-cc26xx BOARD=launchpad/cc2650 >> /dev/null && size *.elf | awk 'NR==2{print $1; exit}')"
export CAP_LEVEL=3
LEVEL3_1_0_1="$(make clean >> /dev/null && make TARGET=srf06-cc26xx BOARD=launchpad/cc2650 >> /dev/null && size *.elf | awk 'NR==2{print $1; exit}')"
export CAP_LEVEL=4
LEVEL4_1_0_1="$(make clean >> /dev/null && make TARGET=srf06-cc26xx BOARD=launchpad/cc2650 >> /dev/null && size *.elf | awk 'NR==2{print $1; exit}')"
export CAP_LEVEL=5
LEVEL5_1_0_1="$(make clean >> /dev/null && make TARGET=srf06-cc26xx BOARD=launchpad/cc2650 >> /dev/null && size *.elf | awk 'NR==2{print $1; exit}')"
echo "Code sizes with ICMP error messages and reduced send but no ND messages:"
echo "${LEVEL0_1_0_1}"
echo "${LEVEL1_1_0_1}"
echo "${LEVEL2_1_0_1}"
echo "${LEVEL3_1_0_1}"
echo "${LEVEL4_1_0_1}"
echo "${LEVEL5_1_0_1}"

export ND_MSGS=1
export CAP_LEVEL=0
LEVEL0_1_1="$(make clean >> /dev/null && make TARGET=srf06-cc26xx BOARD=launchpad/cc2650 >> /dev/null && size *.elf | awk 'NR==2{print $1; exit}')"
export CAP_LEVEL=1
LEVEL1_1_1="$(make clean >> /dev/null && make TARGET=srf06-cc26xx BOARD=launchpad/cc2650 >> /dev/null && size *.elf | awk 'NR==2{print $1; exit}')"
export CAP_LEVEL=2
LEVEL2_1_1="$(make clean >> /dev/null && make TARGET=srf06-cc26xx BOARD=launchpad/cc2650 >> /dev/null && size *.elf | awk 'NR==2{print $1; exit}')"
export CAP_LEVEL=3
LEVEL3_1_1="$(make clean >> /dev/null && make TARGET=srf06-cc26xx BOARD=launchpad/cc2650 >> /dev/null && size *.elf | awk 'NR==2{print $1; exit}')"
export CAP_LEVEL=4
LEVEL4_1_1="$(make clean >> /dev/null && make TARGET=srf06-cc26xx BOARD=launchpad/cc2650 >> /dev/null && size *.elf | awk 'NR==2{print $1; exit}')"
export CAP_LEVEL=5
LEVEL5_1_1="$(make clean >> /dev/null && make TARGET=srf06-cc26xx BOARD=launchpad/cc2650 >> /dev/null && size *.elf | awk 'NR==2{print $1; exit}')"

echo "Code sizes with ICMP error messages and ND messages and reduced send:"
echo "${LEVEL0_1_1}"
echo "${LEVEL1_1_1}"
echo "${LEVEL2_1_1}"
echo "${LEVEL3_1_1}"
echo "${LEVEL4_1_1}"
echo "${LEVEL5_1_1}"

DIFF0=$((LEVEL0_1_0 - LEVEL0_0_0))
DIFF1=$((LEVEL1_1_0 - LEVEL1_0_0))
DIFF2=$((LEVEL2_1_0 - LEVEL2_0_0))
DIFF3=$((LEVEL3_1_0 - LEVEL3_0_0))
DIFF4=$((LEVEL4_1_0 - LEVEL4_0_0))
DIFF5=$((LEVEL5_1_0 - LEVEL5_0_0))
echo "Difference at each level (with and without ICMP messages):"
echo "${DIFF0}"
echo "${DIFF1}"
echo "${DIFF2}"
echo "${DIFF3}"
echo "${DIFF4}"
echo "${DIFF5}"

DIFF0=$((LEVEL0_1_1 - LEVEL0_0_0))
DIFF1=$((LEVEL1_1_1 - LEVEL1_0_0))
DIFF2=$((LEVEL2_1_1 - LEVEL2_0_0))
DIFF3=$((LEVEL3_1_1 - LEVEL3_0_0))
DIFF4=$((LEVEL4_1_1 - LEVEL4_0_0))
DIFF5=$((LEVEL5_1_1 - LEVEL5_0_0))
echo "Difference at each level (base to all additions):"
echo "${DIFF0}"
echo "${DIFF1}"
echo "${DIFF2}"
echo "${DIFF3}"
echo "${DIFF4}"
echo "${DIFF5}"

