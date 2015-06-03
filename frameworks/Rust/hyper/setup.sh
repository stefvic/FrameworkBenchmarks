#!/bin/bash

sed -i 's|tcp(.*:3306)|tcp('"${DBHOST}"':3306)|g' src/main.rs

set CARGO = $IROOT/rust/bin/cargo

$CARGO build --release

$CARGO run --release &
