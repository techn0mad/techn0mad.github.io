#! /bin/sh

# Check if remote has changed
git status -sb | grep -q 'behind '
if [ $? -eq 0 ] || [ ${1} = "-f" ]; then
  # If there are upstream changes, get them
  git pull --ff-only

  # Update gems
  bundle install

  # Build the site
  rm -fr _site
  #bundle exec jekyll33 build --verbose --trace
  bundle exec jekyll33 build --verbose

  doas /home/larry/techn0mad.github.io/deploy.sh
fi
