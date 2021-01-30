#!/bin/bash
cd $(dirname "${BASH_SOURCE[0]}")
full_path="$(realpath $0)"
cur_dir="$(dirname $full_path)"
ln -s $cur_dir/.vimrc ~/.vimrc
