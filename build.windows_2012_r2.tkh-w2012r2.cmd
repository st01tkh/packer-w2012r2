@echo off
SET git_cmd="C:\Program Files (x86)\Git\cmd\git.exe"
SET pc_dir="D:\Users\Public\VM\packer\w2012r2\packer-windows\packer_cache"
echo Git command: %git_cmd"
echo Packer cache dir: %pc_dir"
%git_cmd% clone https://github.com/joefitzgerald/packer-windows
cd packer-windows
move packer_cache packer_cache.bak
mklink /j packer_cache %pc_dir%
mklink windows_2012_r2.tkh-w2012r2.json ..\tkh-w2012r2.json
packer build windows_2012_r2.tkh-w2012r2.json
del tkh-w2012r2.json
cd ..
