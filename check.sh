#!/bin/bash

PACKAGE_NAMES="flake8 eslint ctags luac luacheck bashate shellcheck"

for pkg in ${PACKAGE_NAMES}
do
    which ${pkg} || { \
        echo "ERROR: Missing ${pkg}"
        exit 1
    }
done

cat << __EOF__
------------------------------------------------------------------------------
System wide packages except PHP related are checked.

For php packages, you need to install them manually per project.
------------------------------------------------------------------------------
__EOF__
