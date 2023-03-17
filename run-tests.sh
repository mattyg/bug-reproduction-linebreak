cd example1
CARGO_TARGET_DIR=target cargo build --release --target wasm32-unknown-unknown
hc dna pack dnas/forum/workdir
cd ../

cd example2
CARGO_TARGET_DIR=target cargo build --release --target wasm32-unknown-unknown
hc dna pack dnas/forum/workdir
cd ../

echo ""
echo "example1 posts_integrity zome md5sum: $(md5sum example1/target/wasm32-unknown-unknown/release/posts_integrity.wasm)"
echo "example2 posts_integrity zome md5sum: $(md5sum example2/target/wasm32-unknown-unknown/release/posts_integrity.wasm)"


echo "example1 posts_integrity zome md5sum: $(md5sum example1/target/wasm32-unknown-unknown/release/posts_integrity.wasm)"
echo "example2 posts_integrity zome md5sum: $(md5sum example2/target/wasm32-unknown-unknown/release/posts_integrity.wasm)"

wasm2wat example1/target/wasm32-unknown-unknown/release/posts_integrity.wasm > example1.wat
wasm2wat example2/target/wasm32-unknown-unknown/release/posts_integrity.wasm > example2.wat

echo "example1 wasm2wat output md5sum: $(md5sum example1.wat)"
echo "example2 wasm2wat output md5sum: $(md5sum example2.wat)"

wat2wasm example1/target/wasm32-unknown-unknown/release/posts_integrity.wasm > example1.wasm
wat2wasm example2/target/wasm32-unknown-unknown/release/posts_integrity.wasm > example2.wasm

echo "example1 wat2wasm output md5sum: $(md5sum example1.wasm)"
echo "example2 wat2wasm output md5sum: $(md5sum example2.wasm)"