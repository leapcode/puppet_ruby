# Class: ruby::params
#
# This class handles the Ruby module parameters
#
# Parameters:
# $ruby_dev = the name of the Ruby development libraries
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class ruby::params {

  $version = 'installed'
  $ruby_package = 'ruby'

  case $::osfamily {
    'redhat', 'suse': {
      $ruby_dev='ruby-devel'
    }
    'debian': {
      case $version {
        '1.8', '1.8.7': {
          $ruby_package = 'ruby1.8'
          $ruby_dev = [ 'ruby1.8-dev', 'rake' ]
        }
        '1.9.1': {
          $ruby_package = 'ruby1.9.1'
          $ruby_dev = [ 'ruby1.9.1-dev', 'rake' ]
        }
        '1.9', '1.9.3': {
          $ruby_package = 'ruby1.9'
          $ruby_dev = [ 'ruby-dev', 'rake' ]
        }
        default: {
          $ruby_package = 'ruby'
          $ruby_dev = [ 'ruby-dev', 'rake' ]
        }
      }
    }
    default: {
      fail("Unsupported OS family: ${::osfamily}")
    }
  }
}

