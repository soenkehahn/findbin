#!/bin/bash
# to abort in case of errors
function error {
echo aborted due to an error
exit 1
}
trap error ERR

ghc --make -i../src FindBinBug.hs
dir=$(pwd)
cd /
echo should be the same output:
$dir/FindBinBug
$dir/FindBinBug -f
