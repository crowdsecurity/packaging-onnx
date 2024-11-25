#!/bin/sh

set -e

cd onnxruntime

./build.sh --config Release --compile_no_warning_as_error

{
    echo "create libonnxruntime.a"
    find build/Linux/Release -name "*.a" \
        | sed 's/^/addlib\ /g'
    echo "save"
    echo "end"
} >libonnxruntime.mri

ar -M < libonnxruntime.mri
