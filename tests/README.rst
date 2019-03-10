Python Infrastructure Tests
===========================

Python Infrastructure tests are run on Docker containers with Kitchen Salt (https://kitchen.saltstack.com), testinfra (https://github.com/philpep/testinfra/), and pytest (https://pytest.org).

1. Install Bundler (`gem install bundler`)
2. Install gems in Gemfile (`bundle install`)
3. Run `bundle exec kitchen test` to verify tests
