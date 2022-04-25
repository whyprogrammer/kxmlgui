#!/bin/sh
export LANG=C.UTF-8
export LC_ALL=C.UTF-8
[ -e debian/tests.home ] || mkdir debian/tests.home
HOME="$(pwd)/debian/tests.home" openbox &
sleep 5
HOME="$(pwd)/debian/tests.home" dh_auto_test
ret=$?
rm -rf debian/tests.home
exit $ret
