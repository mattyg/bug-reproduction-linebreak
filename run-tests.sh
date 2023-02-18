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
