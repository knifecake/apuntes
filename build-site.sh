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

# RC2
mkdir -p docs/dist/rc2
make -C rc2
cp rc2/*.pdf rc2/*.html docs/dist/rc2/

# IA
mkdir -p docs/dist/ia
make -C ia
cp ia/*.pdf ia/*.html docs/dist/ia/

# EDO
mkdir -p docs/dist/edo
make -C edo
cp edo/*.pdf edo/*.html docs/dist/edo/

# MICRO
mkdir -p docs/dist/micro
make -C micro
cp micro/*.pdf micro/*.html docs/dist/micro/

# MI
mkdir -p docs/dist/mi
make -C mi/notes
cp mi/notes/*.pdf docs/dist/mi/
