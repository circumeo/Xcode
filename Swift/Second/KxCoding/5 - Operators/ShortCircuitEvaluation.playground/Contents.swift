import UIKit

/*:
 # Short-circuit Evaluation
 */

// false &&
// 첫번째 피연산자가 false일때 두번째 피연산자와 관계없이 항상 false로 평가

//true ||
// 첫번째 피연산자가 true 이므로 두번째 피연산자와 관계없이 항상 true로 평가

// 위와같은 평가방식을 "단락평가" 라고 함

var a = 1
var b = 1

func updateLeft() -> Bool {
    a += 1
    return false
}

func updateRight() -> Bool{
    b += 1
    return true
}

let resultA = updateLeft()
let resultB = updateRight()

if resultA && resultB {
    
}

a
b

