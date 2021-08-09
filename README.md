# beaker-vcloud

[![License](https://img.shields.io/github/license/voxpupuli/beaker-vcloud.svg)](https://github.com/voxpupuli/beaker-vcloud/blob/master/LICENSE)
[![Test](https://github.com/voxpupuli/beaker-vcloud/actions/workflows/test.yml/badge.svg)](https://github.com/voxpupuli/beaker-vcloud/actions/workflows/test.yml)
[![codecov](https://codecov.io/gh/voxpupuli/beaker-vcloud/branch/master/graph/badge.svg)](https://codecov.io/gh/voxpupuli/beaker-vcloud)
[![Release](https://github.com/voxpupuli/beaker-vcloud/actions/workflows/release.yml/badge.svg)](https://github.com/voxpupuli/beaker-vcloud/actions/workflows/release.yml)
[![RubyGem Version](https://img.shields.io/gem/v/beaker-vcloud.svg)](https://rubygems.org/gems/beaker-vcloud)
[![RubyGem Downloads](https://img.shields.io/gem/dt/beaker-vcloud.svg)](https://rubygems.org/gems/beaker-vcloud)
[![Donated by Puppet Inc](https://img.shields.io/badge/donated%20by-Puppet%20Inc-fb7047.svg)](#transfer-notice)

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

## Transfer Notice

This plugin was originally authored by [Puppet Inc](http://puppet.com).
The maintainer preferred that Vox Pupuli take ownership of the module for future improvement and maintenance.
Existing pull requests and issues were transferred over, please fork and continue to contribute at https://github.com/voxpupuli/beaker-vcloud

Previously: https://github.com/puppetlabs/beaker-vcloud

## License

This gem is licensed under the Apache-2 license.

## Release information

To make a new release, please do:
* update the version in lib/beaker-vcloud/version.rb
* Install gems with `bundle install --with release --path .vendor`
* generate the changelog with `bundle exec rake changelog`
* Check if the new version matches the closed issues/PRs in the changelog
* Create a PR with it
* After it got merged, push a tag. GitHub actions will do the actual release to rubygems and GitHub Packages
