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

func printFullName(_ lastName: String, _ firstName: String) {
    print("fullname is \(lastName + firstName)")
}
printFullName("홍", "진솔")


//// 3
//func printName(lastName: String, firstName: String) -> String {
//    let printName = lastName + firstName
//    return printName
//}
//
//let fullname = printName(lastName: "홍", firstName: "진솔")
//fullname
