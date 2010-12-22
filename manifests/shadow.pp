class ruby::shadow {
  require ::ruby
  package{'ruby-shadow':
    ensure => installed,
  }
}
