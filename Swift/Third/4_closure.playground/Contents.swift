import Cocoa

var multiplyClosure: (Int, Int) -> Int = { a, b in
    return a * b
}
let result = multiplyClosure(4, 2)
// $를 이용하여 더 줄이는것이 가능하나 의미파악이 오래걸리므로 위 예제 정도로 줄이는것이 바람직하다

func operateTwoNum(a: Int, b:Int, opertion: (Int, Int) -> Int) -> Int {
    let result = opertion(a, b)
    return result
}


operateTwoNum(a: 4, b: 2, opertion: multiplyClosure)

var addClosure: (Int, Int) -> Int = { a, b in
    return a + b
}
operateTwoNum(a: 4, b: 2, opertion: addClosure)

operateTwoNum(a: 4, b: 2) { a, b in
    return a / b
}

//codeForEveryoneJoonwon+02@gmail.com
//어렵거나 고민이 있을때 위 주소로 연락

let voidClosure: () -> Void = {
    print("iOS 개발자, 클로져")
}

voidClosure()


// Capturing Values : Xcode에서 제공되는 강력한 기능

var count = 0

let incrementer = {
    count += 1
}

incrementer()
incrementer()
incrementer()
incrementer()

count
