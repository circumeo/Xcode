import Cocoa

// Swift Swich에서는 반드시 디폴트를 넣어야함
// Swich 값에 의한 부닉, 숫자(정수, 실수), 문자열, Bool 모두 가능
// 문자열이 통일되어야 함 (숫자면 모두 숫자, 문자면 모두 문자)
// Switch - 139p, 범위 연산자 - 119p

//Switch


switch 7 {
case 10:
    print("10 이지롱")
case 7:
    print("7 이지롱")
/* case 10:
    print("10 이지롱2") 동일한 두번째 case는 의미없음 */
case 8:
    print("8 이지롱")
default:
    print("기본값 이지롱")
}


switch false {
case true:
    print("참 이지롱")
default:
    print("거짓 이지롱")
}


switch "아기돼지" {
case "아기상어":
    print("상어 이지롱")
case "아기돼지":
    print("돼지 이지롱")
default:
    print("모르겠지용")
}


switch 23454 {
case 10:
    print("10 이지롱")
case 7:
    print("7 이지롱")
    fallthrough//7이지롱, 77이지롱 동시출력
case 77:
    print("77 이지롱")
case 8:
    print("8 이지롱")
default:
    print("기본값 이지롱")
}

//범위 연산자


print("-------------")

print("5...8")
print("5..<8")

switch 70 {
case 40...50:
    print("40...50 입니다.")
case 40..<70:
    print("40...50 입니다.")
case 100...:
    print("100... 입니다.")
case ...10:
    print("...10 입니다.")
case ..<20:
    print("..<20 입니다.")
default:
    print("기본값 입니다")
}

////  부서별 mt 장소를 공지하세요
// 인사부 - 바다, 영업부 - 산, 부부 - 안방, 두부 - 콩밭

let buseo = "부부"
var mt:String
switch buseo{
case "인사부":
    mt = "바다"
case "영업부":
    mt = "산"
case "부부":
    mt = "안방"
case "두부":
    mt = "콩밭"
default:
    mt = "없음"
}
print("\(buseo) : \(mt)")
