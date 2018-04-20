# src/main.sh: main executable script
#
# Copyright 2017 Sudaraka Wijesinghe <sudaraka@sudaraka.org>
#
# This program comes with ABSOLUTELY NO WARRANTY
# This is free software, and you are welcome to redistribute it and/or modify
# it under the terms of the BSD 2-clause License. See the LICENSE file for more
# details.
#

GIT=git

IFS='
'

FIXED_COMMIT_TITLES=$(
  $GIT log --grep=^fixup! --format=format:'%s' \
    | uniq \
    | sed 's/fixup! //g' \
    | sort \
    | uniq
  )

echo 'Fixed Commits.'
echo '--------------'

for title in $FIXED_COMMIT_TITLES; do
  $GIT log \
    --grep="^$title$" \
    --date=iso \
    --date-order \
    --format=format:'%C(bold green)%h%C(reset) %C(yellow)%ad%C(reset) %C(white)%s%C(reset)'
done

echo ''
