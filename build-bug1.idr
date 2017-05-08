#!/bin/bash -ex

idris -p effects \
      --total \
      bug1.idr \
      -o bug1.out \
      --V2 \
      --log 255

