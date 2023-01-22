#!/bin/bash
set -e

build(){
    exe=""
    if [ $GOOS == windows ] ; then exe=".exe" ; fi

    # shellcheck disable=SC2027
    echo "正在编译: "$GOOS"_"$GOARCH
    go build -trimpath -ldflags "-w -s" -o  "NekoXProxy_""$GOOS"_"$GOARCH""$exe"
}
build
rm -rf releases
mkdir releases
mv NekoXProxy_* releases