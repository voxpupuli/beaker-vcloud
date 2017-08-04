# beaker-vcloud

Beaker library to use vcloud hypervisor

# How to use this wizardry

This is a gem that allows you to use hosts of vcloud hypervisor with [beaker](https://github.com/puppetlabs/beaker). One thing to note is that if you are using a `pooling api` in your hosts file, beaker-vcloud will automatically switch to [beaker-vmpooler](https://github.com/puppetlabs/beaker-vmpooler). 

### Right Now? (beaker 3.x)

This gem is already included as [beaker dependency](https://github.com/puppetlabs/beaker/blob/master/beaker.gemspec) for you, so you don't need to do anything special to use this gem's functionality with beaker.

### In beaker's Next Major Version? (beaker 4.x)

In beaker's next major version, the requirement for beaker-vcloud will be pulled
from that repo. When that happens, then the usage pattern will change. In order
to use this then, you'll need to include beaker-vcloud as a dependency right
next to beaker itself.

# Contributing

Please refer to puppetlabs/beaker's [contributing](https://github.com/puppetlabs/beaker/blob/master/CONTRIBUTING.md) guide.
