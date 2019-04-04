Python Infrastructure Tests
===========================

Python Infrastructure tests are run on Docker containers with Kitchen Salt (https://kitchen.saltstack.com), testinfra (https://github.com/philpep/testinfra/), and pytest (https://pytest.org).

To get started, in the root directory do the following:
1. Install Bundler (`gem install --user bundler`)
2. Install gems in Gemfile (`bundle install --path vendor/bundle`)
3. Run `bundle exec kitchen test` (pytest must be installed)
  - `bundle exec kitchen test` runs create, converge, verify, and destroy, all of which can be run individually (`bundle exec kitchen create`, `bundle exec kitchen converge`, etc.)
