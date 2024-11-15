#! /bin/sh
# set -e
# set -x

echo -n "$(date): "

# Change into the repo dir
cd $(dirname "${0}")

# Check if this is a git repo
if ! [ -d .git ]; then
  >&2 echo "$(pwd): Not a git repo, exiting..."
  exit 1
fi

# Get the branch name
BRANCH="$(git rev-parse --abbrev-ref HEAD)"

# Update the remote repo information
git fetch --quiet origin

# List remote and local commits
REMOTE_COMMITS="$(git rev-list --left-right --count \
  "origin/${BRANCH}...${BRANCH}" | awk '{ print $1 }')"

# Check if remote has changed
if [ ${REMOTE_COMMITS} -gt 0 ] || [ "${1}" = "-f" ]; then
  # If there are upstream changes, get them
  git pull --ff-only

  # Update gems
  bundle install

  # Build the site
  rm -fr _site
  #bundle exec jekyll33 build --verbose --trace
  bundle exec jekyll33 build

  doas $(dirname ${0})/deploy.sh /var/www/htdocs/orcas.gadallah.net/blog
else
  echo "No changes."
fi
