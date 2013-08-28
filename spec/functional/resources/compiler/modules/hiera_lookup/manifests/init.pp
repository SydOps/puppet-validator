class hiera_lookup($test) {
  test = hiera_hash('test')
  if $test == 'test' {
    fail ("Unable to lookup hieradata...")
  }
}
