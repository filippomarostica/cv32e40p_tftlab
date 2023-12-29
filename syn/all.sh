#!/bin/bash
rm -rf results_old
rm -rf logfiles
mkdir results_old
mv results/* results_old/
mkdir logfiles
echo "Starting the script (cleaning)"
make clean > logfiles/0_clean.txt
echo "Synthesizing..."
make synthesis/nangate45 > logfiles/1_synthesis.txt
echo "Compiling..."
make questa/compile > logfiles/2_compile.txt
echo "Questa lsim..."
make questa/lsim/gate/shell > logfiles/3_lsim.txt
echo "Zoix compile..."
make zoix/compile > logfiles/4_zoix_comp.txt
echo "SAF creation..."
make zoix/fgen/saf > logfiles/5_zoix_saf.txt
echo "Lsim..."
make zoix/lsim > logfiles/6_zoix_lsim.txt
echo "Fsim..."
make zoix/fsim FAULT_LIST=run/zoix/cv32e40p_top_saf.rpt > logfiles/7_zoix_fsim.txt
cp run/zoix/*.hier results/