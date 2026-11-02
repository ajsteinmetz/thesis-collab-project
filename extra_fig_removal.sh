#!/bin/bash
# SPDX-License-Identifier: MIT
# Copyright (c) 2025 Johann Rafelski, Jeremiah Birrell, Christopher Grayson, Andrew Steinmetz, Cheng Tao Yang

echo "Looking for files!"
for image_file in $(ls plots/)
do
if grep $image_file *.log -c > 1
then
        echo "File $image_file is in use."
else
        echo "File $image_file is not in use."
        mv "plots/$image_file" "plots/moved.$image_file" # or any other action
fi
done