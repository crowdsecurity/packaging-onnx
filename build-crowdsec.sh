#!/bin/sh

set -e

cd crowdsec

make BUILD_STATIC=1 BUILD_PROFILE=full BUILD_RE2_WASM=1 CGO_CPPFLAGS="-I$(pwd)/../onnxruntime/include/onnxruntime/core/session" CGO_LDFLAGS="-L$(pwd)/../onnxruntime -lstdc++ -lonnxruntime -ldl -lm" LIBRARY_PATH="$(pwd)/../tokenizers/target/release"
