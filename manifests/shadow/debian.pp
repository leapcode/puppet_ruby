class ruby::shadow::debian inherits ruby::shadow::base {
  Package['ruby-shadow']{
    name => 'libshadow-ruby1.8'
  }
}
