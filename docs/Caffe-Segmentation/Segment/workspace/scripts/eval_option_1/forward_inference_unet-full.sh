#!/usr/bin/env bash
if [[ -z "${CITYSCAPES_DATASET}" ]]; then
  export CITYSCAPES_DATASET=/data2/datasets/Cityscapes
fi
rm -rf *.caffemodel *.prototxt
ln -s ../../model/unet-full/deploy.prototxt deploy.prototxt
ln -s ../../model/unet-full/final_models/pretrained.caffemodel deploy.caffemodel
python segmentation_miou_test.py

