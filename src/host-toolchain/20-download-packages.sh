#!/bin/bash

wget http://www.linuxfromscratch.org/lfs/view/stable/wget-list
wget -i wget-list -P $LFS/sources
wget http://www.linuxfromscratch.org/lfs/view/stable/md5sums -P $LFS/sources
pushd $LFS/sources
md5sum -c md5sums
popd