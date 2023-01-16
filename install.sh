#!/bin/sh
# GitHook installer
# use $1/$PREFIX for prefix usage
set -e
[ $UID -eq 0 ] || ${ERROR:?ROOT PREMISSION REQUIRED} # exit using ${:?}
mkdir -p ${1:-${PREFIX:-/usr}}/share/gh
install -m755 ./gh ${1:-${PREFIX:-/usr}}/bin
cat << 'EOF' > ${PREFIX}/etc/gh
[init]
[push]
[pull]
EOF
