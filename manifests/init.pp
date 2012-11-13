# Class: ruby
#
# This class installs Ruby
#
# Parameters:
#
# version: (default installed)
# Set the version of Ruby to install
#
# Sample Usage:
#
# For a standard install using the latest ruby, simply do:
#
# class { 'ruby': }
#
# On Debian this is equivilant to
# $ apt-get install ruby
#
# To install a specific version of ruby, simply do:
#
# class { 'ruby':
#    version => '1.8.7',
# }
#
# Supported version: 1.8, 1.8.7, 1.9, 1.9.1, 1.9.3

class ruby (
  $version      = $ruby::params::version,
  $ruby_dev     = $ruby::params::ruby_dev,
  $ruby_package = $ruby::params::ruby_package
) inherits ruby::params {

  package{ 'ruby':
    ensure => $version,
    name   => $ruby_package
  }
}
