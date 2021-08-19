import Cocoa

func printName() {
    print("---> My name is Jason")
}

printName()


// parameter 1개(함수옆 "value"가 파라미터이다)
// 숫자를 받아서 10을 곱해서 출력한다

func printMultipleOftTen(value: Int) {
    print("\(value) * 10 = \(value * 10)")
}

printMultipleOftTen(value: 5)

// parameter 2개
// 물건값과 갯수를 받아서 전체 금액을 출력하는 함수

//func printTotalPrice(price: Int, count: Int) {
//    print("Total Price: \(price * count)")
//}
//
//printTotalPrice(price: 1500, count: 5)

func printTotalPrice(price: Int, count: Int) {
    print("Total Price: \(price * count)")
}

printTotalPrice(price: 1500, count: 5)
printTotalPrice(price: 1500, count: 10)
printTotalPrice(price: 1500, count: 7)
printTotalPrice(price: 1500, count: 1)

//위와 같이 디폴트 값이 고정일 때 갯수에 따라 계산하고 싶다면 아래와 같은 함수를 사용하면 깔끔하게 사용할수 있다("price: Int" 옆에 "="부호를 쓰고 값을 쓴다)
func printTotalPriceWithDefaultValue(price: Int = 1500, count: Int) {
    print("Total Price: \(price * count)")
}

printTotalPriceWithDefaultValue(count: 5)
printTotalPriceWithDefaultValue(count: 10)
printTotalPriceWithDefaultValue(count: 7)
printTotalPriceWithDefaultValue(count: 1)

//몇개의 항목만 값을 다르게 하고 싶을 경우 아래와 같이 값을 따로 넣어주면 그에 맞춰 계산해준다
printTotalPriceWithDefaultValue(price: 2000, count: 1)


func totalPrice(price: Int, count: Int) -> Int {
    let totalPrice = price * count
    return totalPrice
}

let calculatedPrice = totalPrice(price: 10000, count: 77)
calculatedPrice
