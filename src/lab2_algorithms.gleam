import gleam/float
import gleam/int
import gleam/io
import lab2_algorithms/algorithms

pub fn main() -> Nil {
  let length = algorithms.circumference(15.6)
  io.println("1: L = " <> float.to_string(length))

  let algorithms.PolynomialResult(a, b, minimum) =
    algorithms.polynomial_minimum(5)
  io.println(
    "2: A = "
    <> int.to_string(a)
    <> ", B = "
    <> int.to_string(b)
    <> ", min = "
    <> int.to_string(minimum),
  )

  let squares_sum = algorithms.sum_of_squares(5)
  io.println("3: sum = " <> int.to_string(squares_sum))

  let birth_date_result = algorithms.birth_date_value(day: 24, month: 8)
  io.println("4: " <> format_birth_date_result(birth_date_result))
}

fn format_birth_date_result(result: algorithms.BirthDateResult) -> String {
  case result {
    algorithms.X(value) -> "x = " <> int.to_string(value)
    algorithms.Y(value) -> "y = " <> int.to_string(value)
    algorithms.Z(value) -> "z = " <> int.to_string(value)
  }
}
