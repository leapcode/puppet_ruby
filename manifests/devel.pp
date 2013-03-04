class ruby::devel {
  include ruby

  package { $ruby::ruby_dev:
    ensure  => installed,
    require => Package['ruby'],
  }
}
