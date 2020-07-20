#!/bin/bash

set -e

if [ ! -d ${HOME}/.vim_runtime/ ]; then
    git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
    sh ~/.vim_runtime/install_awesome_vimrc.sh
fi

script=$(readlink -f "$0")
current_dir=$(dirname "$script")

plugins_dir="${current_dir}/vim-plugins"

rm -f ${HOME}/.vim_runtime/my_plugins/*
ln -s ${plugins_dir}/* ${HOME}/.vim_runtime/my_plugins/

rm -f ${HOME}/.vim_runtime/my_configs.vim
ln -s ${current_dir}/my_configs.vim ${HOME}/.vim_runtime/my_configs.vim

