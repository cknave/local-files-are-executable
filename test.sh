#!/bin/sh
rm -f foo
touch foo
chmod a-x foo
python - <<EOF
import os

print('Executable file is executable:', os.access('test.sh', os.X_OK))
print('Non-executable file is executable:', os.access('foo', os.X_OK))
EOF
