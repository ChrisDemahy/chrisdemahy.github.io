bundle init
bundle config set --local path 'vendor/bundle'
bundle add jekyll
bundle exec jekyll new --blank --force --skip-bundle .
bundle install
bundle exec jekyll serve --watch