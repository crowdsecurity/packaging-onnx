#!/bin/sh

set -e

# checkout onnxruntime

if [ ! -d onnxruntime ]; then
    git clone https://github.com/microsoft/onnxruntime -b v1.19.2
fi

cd onnxruntime
# patch for gcc 14.2.x
git cherry-pick 10883d7997ed4b53f989a49bd4387c5769fbd12f

# checkout tokenizers

if [ ! -d tokenizers ]; then
    git clone https://github.com/daulet/tokenizers.git -b 1.20.2
fi

# checkout crowdsec

[ ! -d crowdsec ] && git clone https://github.com/crowdsecurity/crowdsec -b anomaly-detection

