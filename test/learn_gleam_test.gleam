import gleeunit
import gleeunit/should
import learn_gleam as l

pub fn main() {
  gleeunit.main()
}

// gleeunit test functions end in `_test`
pub fn hello_world_test() {
  1
  |> should.equal(1)
}

pub fn add_test() {
  l.add(5, 1)
  |> should.equal(6)
}
