class ruby::devel {
  include ruby
  package{"ruby-devel.${::architecture}":
    ensure => installed,
    require => Package['ruby'],
  }
}
