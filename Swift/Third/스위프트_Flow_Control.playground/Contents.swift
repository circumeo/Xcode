import Cocoa
import Foundation

 // --- while

// while 조건 {
//      code...
//}

//print("--- While")
//var i = 10
//while i < 10 {
//    print(i)
////    if i == 5 {
////        break
////    }
//    i += 1
//}
//
//print("--- Repeat")
//i = 10
//repeat {
//    print(i)
//    i += 1
//} while i < 10
//
////while
////조건 > 코드 수행 > 조건 > 코드수행
////
////repeat while
////코드 수행  > 조건 > 코드 수행  > 조건
//
//
//// --- For Loop
//
//let closedRange = 0...10 // upperBound 10 포함
//let halfClosedRange = 0..<10 //upperBound 10 포함하지 않고 9까지
//
//var sum = 0
//for i in closedRange {
//    sum += i
//}
//
//print("---> total sum: \(sum)")
//
//var sinValue: CGFloat = 0
//for i in closedRange {
//    sinValue = sin(CGFloat.pi/4 * CGFloat(i))
//}
//
//let  name = "Jason"
//for _ in closedRange {
//    print("---> name: \(name)")
//}
//// for문의 Constant를 i로 정할 경우 Warning이 발생하는데 이는 사용이 되지 않아 발생하므로 "_"를 주게되면 발생하지 않는다
//
//for i in closedRange {
//    if i % 2 == 0 { //"%"의 의미는 i를 2로 나눴을때 나머지를 뜻하며 "== 0"의 의미는 나머지 숫자가 0인 조건을 걸어주는것을 뜻한다
//        print("---> 짝수: \(i)")
//    }
//}

//위와 같은 결과를 도출하고, 같은 과정이지만 조금 더 단축하여 사용할 수 있다
//for i in closedRange where i % 2 == 0 {
//    print("---> 짝수: \(i)")
//}
//
////1~10까지 숫자 나열 중 "3"만 빼고 출력하고 싶은 경우
//for i in closedRange {
//    if i == 3 { // i가 3일 경우
//        continue // for문은 closedRange에서 정한 상한수까지 계속 순환하지만 위 if 문의 "i가 3일경우" 라는 조건을 걸고 아래 continue(속행하다)라는 코드를 작성하였으므로 i가 3일경우에는 그냥 지나가고 그 다음 순환을 한다
//    }
//    print("---> \(i)")
//}
//
////구구단 응용
//for i in closedRange {
//    for j in closedRange {
//        print("gugu -> \(i) * \(j) = \(i * j)")
//    }
//}
// 0 * 0 이후 1 * 1, 2 * 2 형태가 되지 않는 이유는 안쪽에 있는 for문의 closedRange 상한수인 10까지 모두 순환시킨후 다음 순서로 넘어가기 때문이다
// 중첩의 중첩은 수행 성능 및 읽기, 가독성이 좋지 않아 실무에서 사용하기 힘들다


// --- Switch

//let num = 10
//
//switch num {
//case 0:
//    print("--> 0 입니다.")
//case 1...10:
//    print("--> 0부터 10 사이 입니다.")
//case 10:
//    print("--> 10 입니다.")
//default:
//    print("--> 나머지 입니다.")
//}
//// "10 입니다." 가 출력되지 않고 "0부터 10 사이 입니다." 만 출력되는 이유는 순서가 더 우선으로 있으므로 걸려서 빠져나와 Switch문은 종료된다
//
//let pet = "bird"
//
//switch pet {
//case "dog", "cat", "bird":
//    print("--> 집동물이네요?")
//default:
//    print("--> 잘모르겠습니다")
//}

// Switch문의 Where문 삽입하여 응용
let num = 20
switch num {
case _ where num % 2 == 0:
    print("--> 짝수")
default:
    print("--> 홀수")
}

//// Switch문을 좌표로 응용
//let coordinate = (x: 10, y: 10)
//
//switch coordinate {
//case (0, 0):
//    print("--> 원점이네요")
//case (_, 0):
//    print("--> x축 이네요")
//case (0, _):
//    print("--> y축 이네요")
//default:
//    print("--> 좌표 어딘가")
//}

// 좌표 숫자를 출력하고 싶을때
let coordinate = (x: 10, y: 10)

switch coordinate {
case (0, 0):
    print("--> 원점이네요")
case (let x, 0):
    print("--> x축 이네요, x:\(x)")
case (0, let y):
    print("--> y축 이네요, y:\(y)")
case(let x, let y) where x == y:
    print("--> x, y가 같음 x,y = \(x), \(y)") // where문을 넣어 x,y가 같을때 다른 case 생성 가능
case(let x, let y):
    print("--> 좌표 어딘가 x,y = \(x), \(y)")
}

