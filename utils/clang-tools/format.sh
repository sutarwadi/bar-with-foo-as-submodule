#!/bin/bash
STYLE=$(which clang-format)
if [ $? -ne 0 ]; then
    echo "clang-format not installed. Unable to check source file format policy." >&2
    exit 1
fi
RE=0
ALLFILES=$(find . -not \( -path ./contrib -prune \) -name '*.c' -o -name '*.cpp' -o -name '*.h' -o -name '*.cc' -o -name '*.hh' -o -name '*.hpp' -o -name '*.impl')
for FILE in $ALLFILES; do
  $STYLE $FILE | cmp -s $FILE -
  if [ $? -ne 0 ]; then
    echo "$FILE does not respect the coding style. Formatting. " >&2
        $STYLE -i $FILE
        RE=1
  fi
done



#exit $RE
