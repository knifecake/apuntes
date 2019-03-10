rm -rf docs/dist/

mkdir -p docs/dist

# GCS
mkdir -p docs/dist/gcs
make -C gcs
cp gcs/*.pdf gcs/*.html docs/dist/gcs/

# ANAMAT
mkdir -p docs/dist/anamat
make -C anamat
cp anamat/*.pdf anamat/*.html docs/dist/anamat/

# ALG
mkdir -p docs/dist/alg
make -C alg
cp alg/*.pdf docs/dist/alg/

# EI
mkdir -p docs/dist/ei
make -C ei
cp ei/*.pdf docs/dist/ei/
