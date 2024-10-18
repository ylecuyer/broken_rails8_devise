### Steps to reproduce
<!-- (Guidelines for creating a bug report are [available
here](https://edgeguides.rubyonrails.org/contributing_to_ruby_on_rails.html#creating-a-bug-report)) -->

<!-- Paste your executable test case created from one of the scripts found [here](https://edgeguides.rubyonrails.org/contributing_to_ruby_on_rails.html#create-an-executable-test-case) below: -->
```
Clone https://github.com/ylecuyer/broken_rails8_devise
Run bundle install

Run tests with rails 7.2: bundle exec rspec

Run tests with rails 8: next bundle exec rspec
```

```sh
ylecuyer@inwin:/tmp/broken_rails8_devise$ bundle exec rspec
.

Finished in 0.02885 seconds (files took 0.57112 seconds to load)
1 example, 0 failures

ylecuyer@inwin:/tmp/broken_rails8_devise$ next bundle exec rspec
DEPRECATION WARNING: `to_time` will always preserve the full timezone rather than offset of the receiver in Rails 8.0. To opt in to the new behavior, set `config.active_support.to_time_preserves_timezone = :zone`. (called from <top (required)> at /tmp/broken_rails8_devise/config/environment.rb:5)
DEPRECATION WARNING: `to_time` will always preserve the full timezone rather than offset of the receiver in Rails 8.0. To opt in to the new behavior, set `config.active_support.to_time_preserves_timezone = :zone`. (called from <top (required)> at /tmp/broken_rails8_devise/config/environment.rb:5)
F

Failures:

  1) TestController works
     Failure/Error: sign_in user
     
     RuntimeError:
       Could not find a valid mapping for #<User id: 1, email: [FILTERED], created_at: "2024-10-18 22:18:00.403692000 +0000", updated_at: "2024-10-18 22:18:00.403692000 +0000">
     # ./spec/controllers/test_controller_spec.rb:6:in `block (2 levels) in <top (required)>'

Finished in 0.05526 seconds (files took 0.53186 seconds to load)
1 example, 1 failure

Failed examples:

rspec ./spec/controllers/test_controller_spec.rb:9 # TestController works
```
