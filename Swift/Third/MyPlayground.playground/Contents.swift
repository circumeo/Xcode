import Foundation

//var str = "Hello, playground"
//let value = arc4random_uniform(100)
//print("--> \(value)")

/*
 여기에 여러분이 하시고 싶은 말을
 길게 작성하셔서
 메시지를 남겨놓으시면 되겠습니다.
 */

// --- Tuple

let coordinates = (4, 6)

let x = coordinates.0
let y = coordinates.1

let cooordinatedsNamed = (x: 2, y: 3)

let x2 = cooordinatedsNamed.x
let y2 = cooordinatedsNamed.y

let (x3, y3) = cooordinatedsNamed
x3
y3



// --- Boolean

//let yes = true
//let no = false
//
//let isFourGreaterThanFive = 4 > 5
//
//if isFourGreaterThanFive {
//    print("---> 참")
//} else {
//    print("---> 거짓")
//}

//if 조건..... {
//    // 조건이 참인경우에 수행하는 코드를 여기다가...
//} else {
//    // 그렇지 않은 경우에 코드는 여기다가...
//}

let a = 5
let b = 10

//if a > b {
//    print("---> a가 크다")
//} else {
//    print("---> b가 크다")
//}


let name1 = "Jin"
let name2 = "Jason"

let isTwoNameSame = name1 == name2 // "="기호를 이미 기존에 할당에 의미로 사용중이므로 동일한지 묻는 표시는 "=="으로 한다

if isTwoNameSame {
    print("---> 이름이 같다")
} else {
    print("---> 이름이 다르다")
}



let isJason = name2 == "Jason"
let isMale = true

let jasonAndMale = isJason && isMale
let jasonOrMale = isJason || isMale


//let greetingMessage: String
//if isJason {
//    greetingMessage = "Hello Jason"
//} else {
//    greetingMessage = "Hello Somebody"
//}
//
//print("Msg: \(greetingMessage)")

let greetingMessage: String = isJason ? "Hello Jason" : "Hello Somebody"// "isJason"이 조건이며 "?"의 의미는 참인 경우에 왼쪽 메시지, 아닌 경우에 오른쪽 메시지를 출력한다
print("Msg: \(greetingMessage)")

// --- Scope

func hello() {
    var hours = 50 //근로시간
    let payPerHour = 10000 //시급
    var salary = 0

    if hours > 40 { // 40시간 이상 추가근로수당
        let extraHours = hours - 40
        salary += extraHours * payPerHour * 2
        hours -= extraHours
    }

    salary += hours * payPerHour
    print(hours)
}

hello()
