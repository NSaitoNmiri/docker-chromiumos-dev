#!/usr/bin/env bash
set -eu

WORKDIR="$HOME/work/chromiumos_dev"

# install depot_tools
mkdir -p $WORKDIR
cd $WORKDIR
git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git
echo ""
echo "# depot_tools" >> $HOME/.profile
echo "export PATH=\$WORKDIR/depot_tools:\$PATH" >> $HOME/.profile
