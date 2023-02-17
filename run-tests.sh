cd example1
CARGO_TARGET_DIR=target cargo build --release --target wasm32-unknown-unknown
hc dna pack dnas/forum/workdir

cd ../example2
CARGO_TARGET_DIR=target cargo build --release --target wasm32-unknown-unknown
hc dna pack dnas/forum/workdir
cd ../

echo ""
echo "forum dna md5sum: $(md5sum example1/dnas/forum/workdir/forum.dna)"
echo "forum2 dna md5sum: $(md5sum example2/dnas/forum/workdir/forum.dna)"