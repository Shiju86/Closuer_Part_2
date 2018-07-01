//: Playground - noun: a place where people can play

import UIKit

print("Hello")
var str = "Hello123, playground"

print(str)

var addClousers = { (number1: Int, number2: Int) in
  
  return number1 + number2
  
}

print(addClousers(20, 30))

//MARK:- Return CLosure Indirectly
func returnClosure() -> ((Int, Int) -> Int) {
  
  return addClousers
}

let returnedClosures = returnClosure()
print(returnedClosures(40, 50))

print(returnClosure()(20, 30))

//-------------------------------------------
//: Return Closure Directly

func returnClosureDirectly() -> ((Int, Int) -> Int) {
  return { (number1, number2) in number1 + number2 }
}

let closure = returnClosureDirectly()

print(closure(20, 40))

//:: Simplest way to use--- Have Fun

func returnClosureDirectlySecnd() -> ((Int, Int) -> Int) {
  
  return { $0 + $1 }
  
}

let closureSecnd = returnClosureDirectlySecnd()

print(closureSecnd(10, 20))


//Example ---

let array = Array(1...50).filter{ $0 % 2 == 0 }
print(array)
