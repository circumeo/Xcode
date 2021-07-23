import Cocoa

// 1. 성, 이름을 받아서 fullname을 출력하는 함수 만들기

// 2. 1번에서 만든 함수인데, 파라미터 이름을 제거하고 fullname을 출력하는 함수 만들기

// 3. 성, 이름을 받아서 fullname return 하는 함수 만들기

// 1

//func printFullName(lastName: String, firstName: String) {
//    print("fullname is \(lastName + firstName)")
//}
//printFullName(lastName: "홍", firstName: "진솔")


// 2

//func printFullName(_ lastName: String, _ firstName: String) {
//    print("fullname is \(lastName + firstName)")
//}
//printFullName("홍", "진솔")


//// 3
//func printFullName(lastName: String, firstName: String) -> String {
//    return "\(lastName + firstName)"
//}
//let fullname = printFullName(lastName: "홍", firstName: "진솔")
//fullname

// Overloads
func printTotalPrice(price: Int, count: Int) {
    print(" Total Price: \(price * count)")
}

func printTotalPrice(price: Double, count: Double) {
    print(" Total Price: \(price * count)")
}

func printTotalPrice(가격: Double, 갯수: Double) {
    print(" Total Price: \(가격 * 갯수)")
}
//같은 함수라도 위와같이 다르게 표현할수 있는 개념을 "Overloads" 라고 한다

// In-out Parameter

//func incrementAndPrint(_ value: Int) {
//    value += 1
//    print(value)
//}
//위 함수에서 에러가 뜨는 이유는 "value" 값이 파라미터로 인해 상수로 정해졌음에도 아랫줄에서 1을 더하는 과정으로 인해 값이 변하려 하기 때문이며 이런 경우 아래와 같이 변수로 "value"값을 선언해주면 해결된다

var value = 3
func incrementAndPrint(_ value: inout Int) {
    value += 1
    print(value)
}

incrementAndPrint(&value)
// "_" 기호는 언더스코어 라고 부르며 이것을 넣는 이유는 함수 호출시에 일일히 파라미터 이름을 넣지 않는 편의성 때문이다

// ---- function as a parameter

func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func subtract(_ a: Int, _ b: Int) -> Int {
    return a - b
}

var function = add
function(4, 2)

function = subtract
function(4, 2)

func printResult(_ function: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    let result = function(a, b)
    print(result)
}

printResult(add, 10, 5)
printResult(subtract, 10, 5)
// 파리미터를 넘길때 리턴할때 연산자는 중요하지 않지만 함수타입이 같아야 한다 예컨대 위에 함수를 예로 들었을때 "Int" 타입이어야 한다
// 실무에서는 한가지 함수로 한가지 일만 하도록 순수함수를 짜는 노력이 중요하며 불가피하게 10줄 이상을 넘어갈경우 작은 함수로 나누는 노력을 해야 한다
