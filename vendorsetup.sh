# Vendor Tree
echo 'Cloning Vendor tree [1/4]'
git clone git@github.com:H1mJT/vendor_realme_RMX1901_13.git vendor/realme/RMX1901


#Kernel tree
echo 'Cloning Kernel tree [2/4]'
git clone --recurse-submodules git@github.com:H1mJT/kernel_realme_RMX1901.git -b upstream_ksu kernel/realme/RMX1901

#Syncing KernelSU to latest source
echo "Syncing KernelSU to latest source [3/4]"
cd kernel/realme/RMX1901 && git submodule sync && git submodule update --init --recursive && cd KernelSU && git checkout main && git pull && cd ../../../..

echo 'Patching Realme In-Screen Proximity [4/4]'
# Realme In-Screen Proximity Patch
cd frameworks/base && git fetch git@github.com:H1mJT/proximity_patch.git && git cherry-pick afb38a0f9f9a612b13b12b901ab9b7f0fffae3de && cd ../..


