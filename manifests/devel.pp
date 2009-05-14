class ruby::devel {
  include ruby
  package{'ruby-devel': 
    ensure => installed, 
    require => Package['ruby'],
  }
}
