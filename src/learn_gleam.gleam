import gleam/io
import nasa/rocket_ship

pub type Cat {
  Cat(name: String, cuteness: Int, age: Int)
}

pub type User {
  LoggedIn(name: String)
  Guest
}

pub type Score {
  Points(Int)
}

fn cats() -> List(Cat) {
  let cat1 = Cat(name: "Nubi", cuteness: 2001, age: 1)
  let cat2 = Cat(cuteness: 1805, name: "Biffy", age: 2)

  let cat3 = Cat("Ginny", 1950, 2)

  [cat1, cat2, cat3]
}


fn get_name(user: User) -> String {
  case user {
    LoggedIn(name) -> name
    Guest -> "Guest user"
  }
}

fn explore_space() {
  rocket_ship.launch()
}

pub fn add(x: Int, y: Int) -> Int {
  x + y
}

pub type Box(a) {
  Box(inner: a)
}

pub opaque type Counter {
  Counter(value: Int)
}

pub fn new() -> Counter {
  Counter(0)
}

pub fn increment(counter: Counter) -> Counter {
  Counter(counter.value + 1)
}


pub fn main() {
  let sara = LoggedIn(name: "Sara")
  let rick = LoggedIn(name: "Rick")
  let visitor = Guest

  let score = Points(50)
  let Points(p) = score

  let cat = Cat(cuteness: 1805, name: "Biffy", age: 2)
  let Cat(name: name, cuteness: _, age: _) = cat
  io.debug(name)

  let a = Box(123)
  let b = Box("G")
}
