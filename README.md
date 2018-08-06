# beaker-vcloud

Beaker library to use vcloud hypervisor

# Legacy VMPooler Fallback

In previous versions of this hypervisor, a shim was added to ease internal transition to a new hypervisor called vmpooler. This shim would automatically and silently promote hosts with `hypervisor: vcloud` to use the beaker-vmpooler hypervisor if certain conditions were met: the hosts file contained a `CONFIG[:pooling_api]` and not the otherwise required `:datacenter`. This fallback behavior is no longer supported; if applicable, you will see a warning message with upgrade instructions.

# How to use this wizardry

This is a gem that allows you to use hosts of vcloud hypervisor with [beaker](https://github.com/puppetlabs/beaker).

Beaker will automatically load the appropriate hypervisors for any given hosts file, so as long as your project dependencies are satisfied there's nothing else to do. No need to `require` this library in your tests.

## With Beaker 3.x

This library is included as a dependency of Beaker 3.x versions, so there's nothing to do.

## With Beaker 4.x

As of Beaker 4.0, all hypervisor and DSL extension libraries have been removed and are no longer dependencies. In order to use a specific hypervisor or DSL extension library in your project, you will need to include them alongside Beaker in your Gemfile or project.gemspec. E.g.

~~~ruby
# Gemfile
gem 'beaker', '~>4.0'
gem 'beaker-vcloud'
# project.gemspec
s.add_runtime_dependency 'beaker', '~>4.0'
s.add_runtime_dependency 'beaker-vcloud'
~~~

# Contributing

Please refer to puppetlabs/beaker's [contributing](https://github.com/puppetlabs/beaker/blob/master/CONTRIBUTING.md) guide.
