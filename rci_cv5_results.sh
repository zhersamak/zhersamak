# Commands to run on OSC after rci completes
# In ~/Mn2plus/CV5/

# Step 1: jj2lsj for each symmetry block
# Even parity blocks for Mn2+ 3d5: J=1/2,3/2,5/2,7/2,9/2,11/2,13/2

jj2lsj << EOI
3d5_CV5
1
4
y
EOI

# Step 2: rlevels
rlevels << EOI
3d5_CV5.lsj.lev
EOI
