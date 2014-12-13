cd packer-windows
mklink tkh-w2012r2.json ..\tkh-w2012r2.json
packer build tkh-w2012r2.json
del tkh-w2012r2.json
cd ..
