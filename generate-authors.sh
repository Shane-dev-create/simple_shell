#!/bin/sh

cat <<- 'EOH'
	# This file lists all individuals having contributed content to the repository.
	# For how it is generated, see `hack/generate-authors.sh`.
EOH

git shortlog -se \
  | perl -spe 's/^\s+\d+\s+//' \
  | sed -e '/^CommitSyncScript.*$/d' \
  > AUTHORS
