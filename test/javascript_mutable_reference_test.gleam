import gleeunit
import javascript/mutable_reference

pub fn main() {
  gleeunit.main()
}

pub fn reference_test() {
  let ref = mutable_reference.new(1)
  let assert 1 = mutable_reference.update(ref, fn(a) { a + 1 })
  let assert 2 = mutable_reference.get(ref)
  let assert 2 = mutable_reference.set(ref, 3)
  let assert 3 = mutable_reference.get(ref)
}

pub fn reference_equality_not_same_test() {
  let assert False =
    mutable_reference.is_same_reference(
      mutable_reference.new(0),
      mutable_reference.new(0),
    )
}

pub fn reference_equality_same_test() {
  let ref = mutable_reference.new(0)
  let assert True = mutable_reference.is_same_reference(ref, ref)
}
