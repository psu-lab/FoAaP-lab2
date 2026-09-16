import gleeunit
import gleeunit/should
import lab2_algorithms/algorithms

pub fn main() -> Nil {
  gleeunit.main()
}

pub fn circumference_test() {
  algorithms.circumference(15.6)
  |> should.equal(49.008804)
}

pub fn polynomial_minimum_test() {
  algorithms.polynomial_minimum(5)
  |> should.equal(algorithms.PolynomialResult(a: 105, b: 150, minimum: 105))
}

pub fn sum_of_squares_test() {
  algorithms.sum_of_squares(5)
  |> should.equal(55)
}

pub fn sum_of_squares_empty_range_test() {
  algorithms.sum_of_squares(0)
  |> should.equal(0)
}

pub fn birth_date_greater_than_18_test() {
  algorithms.birth_date_value(day: 24, month: 8)
  |> should.equal(algorithms.X(64))
}

pub fn birth_date_less_than_18_test() {
  algorithms.birth_date_value(day: 10, month: 5)
  |> should.equal(algorithms.Y(10))
}

pub fn birth_date_equal_to_18_test() {
  algorithms.birth_date_value(day: 10, month: 8)
  |> should.equal(algorithms.Z(80))
}
