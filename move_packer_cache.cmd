@echo off
SET pc_dir="D:\Users\Public\VM\packer\w2012r2\packer-windows\packer_cache"
echo Packer cache dir: %pc_dir"
mkdir %pc_dir%
cd packer-windows
move packer_cache packer_cache.bak
mklink /j packer_cache %pc_dir%
cd ..
