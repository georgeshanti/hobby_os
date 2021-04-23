env setup

rustup toolchain install nightly
rustup override set nightly

cargo install xargo

cargo install bootimage
rustup component add llvm-tools-preview