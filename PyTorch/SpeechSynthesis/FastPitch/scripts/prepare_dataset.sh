#!/usr/bin/env bash

set -e

: ${DATA_DIR:=LJSpeech-1.1}
: ${SYMBOL_SET:=english_basic}
: ${TEXT_CLEANERS:=english_cleaners_v2}
: ${FILELISTS:="filelists/ljs_audio_text.txt"}
: ${ARGS="--extract-mels"}

python prepare_dataset.py \
    --wav-text-filelists ${FILELISTS} \
    --n-workers 16 \
    --batch-size 1 \
    --dataset-path $DATA_DIR \
    --extract-pitch \
    --f0-method pyin \
    --symbol-set $SYMBOL_SET \
    --text-cleaners $TEXT_CLEANERS \
    $ARGS
