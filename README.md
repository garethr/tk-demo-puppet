## Introduction

At FOSDEM Bryan Berry introduced a working demo of the new [Test
Kitchen](https://github.com/bryanwb/tk-demo) and pointed out that the
problem and infact the solution wasn't specific to Chef.

This example repos demonstrates using Test Kitchen with Puppet. It
relies on some small changes to both Test Kitchen and to the Vagrant
Test Kitchen driver which are referenced in the Gemfile.

This demo spins up 2 nodes and then tests that one of them correctly
installs a running nginx web server. It's not as fancy as Bryan's demo
but hey, it does color code the test output.


## Running the example

This tutorial relies heavily on [bundler](http://gembundler.com/). The
`rake` and `kitchen` commands will fail unless you prefix them with
`bundle exec`.

To get started

```Shell
  $ git clone https://github.com/garethr/tk-demo-puppet 
  $ bundle install
```

To spin up both nodes and then run the RSpec tests to test the final state

```Shell
  $ bundle exec rake test
  # spins up 2 nodes, converges them, then executes rspec tests
```
To destroy everything

```Shell
  $ bundle exec rake destroy
  # destroys all virtualbox vms
```

The [Rspec](https://www.relishapp.com/rspec) tests are located in
`spec/hello_spec.rb`


## Next steps

This is an example of the smallest possible working changes. The changes
to Test Kitchen and Kitchen Vagrant need more work, in particular to
make them extensible and for the community to think about sensible
defaults.

