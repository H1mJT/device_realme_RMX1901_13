# Vendor Tree
echo 'Cloning Vendor tree [1/4]'
git clone git@github.com:H1mJT/vendor_realme_RMX1901_13.git vendor/realme/RMX1901


#Kernel tree
echo 'Cloning Kernel tree [2/4]'
git clone git@github.com:H1mJT/kernel_realme_RMX1901.git -b upstream kernel/realme/RMX1901


# Use Proton Clang For Compilation
echo ' Using Proton Clang For Compilation [3/4]'
git clone --depth=1 https://github.com/kdrag0n/proton-clang.git prebuilts/clang/host/linux-x86/clang-proton


echo 'Patching Realme In-Screen Proximity [4/4]'
# Realme In-Screen Proximity Patch
cd frameworks/base && git fetch git@github.com:H1mJT/proximity_patch.git && git cherry-pick de630e735cdbb68a606d3bbbf8b1674be31bab2d && git cherry-pick 6c0e9b899bef7b4681b5f0dc7110ca76b35b9a74 && git cherry-pick 48541697c7d13d3bb75633a88382e31cf0bdefb9 && cd ../..

