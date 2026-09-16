pub const pi = 3.14159

//2
pub type PolynomialResult {
  PolynomialResult(a: Int, b: Int, minimum: Int)
}

//4
pub type BirthDateResult {
  X(value: Int)
  Y(value: Int)
  Z(value: Int)
}

//1
pub fn circumference(diameter: Float) -> Float {
  pi *. diameter
}

//2
pub fn polynomial_minimum(x: Int) -> PolynomialResult {
  let x_squared = x * x
  let a = x_squared * x - 10 * x + 30
  let b = 2 * x_squared + 20 * x
  let minimum = case a < b {
    True -> a
    False -> b
  }

  PolynomialResult(a: a, b: b, minimum: minimum)
}

//3
pub fn sum_of_squares(n: Int) -> Int {
  sum_of_squares_loop(current: 1, n: n, sum: 0)
}

//3
fn sum_of_squares_loop(current current: Int, n n: Int, sum sum: Int) -> Int {
  case current > n {
    True -> sum
    False ->
      sum_of_squares_loop(
        current: current + 1,
        n: n,
        sum: sum + current * current,
      )
  }
}

//4
pub fn birth_date_value(day day: Int, month month: Int) -> BirthDateResult {
  let sum = day + month

  case sum > 18 {
    True -> X(value: 2 * sum)
    False ->
      case sum < 18 {
        True -> Y(value: 2 * { day - month })
        False -> Z(value: day * month)
      }
  }
}
