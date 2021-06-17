import Cocoa

switch 45 {
case 10,20,30,40: // 값을 여러개 넣는것이 가능
    print("10,20,30,40")
case 12,22,33:
    print("12,22,33 입니다.")
default:
    print("기본값 입니다.")
}


// where
// case옆에 기재하여 조건을 추가할수 있다.
// 145p


let jum = 58
let gg = 3

switch gg {
case 1:
    print("1학년 입니다.")
case 2 where jum >= 80 :
    print("2학년 입니다.")
case 2:
    print("2학년 불합격 입니다.")
case 3 where jum >= 60 :
    print("3학년 입니다.")
case 3:
    print("3학년 불합격 입니다.")
default:
    print("학생이 아닙니다.")
}
