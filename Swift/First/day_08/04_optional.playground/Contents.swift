import Cocoa

var a:Int? = nil //? : optional -- 값이 없는 경우를 허용, 없다의 의미를 주기 위해 "물음표"
print("a: \(a)")

var b:Int? = 100
b = nil

var c:Int?
var d:Int

//print(c, d) d는에러
print("c: \(c)")

c = 123
//c = nil
print("c: \(c!)") // ! -> 옵셔널 변수의 값을 강제 추출 하는 것임 ::: 값이 nil일 경우 에러
