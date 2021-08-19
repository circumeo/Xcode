import Cocoa

var carName: String? // = "Tesla"
carName = nil
carName = "땡크"
// 1. "?"는 값이 있을수도 있고 없을수도 있을때 넣어준다
// 2. 위와 같은 경우 "=" 뒤에 값을 넣지 않는다면 "nil"이 출력되고 값을 넣은 경우 값이 출력된다
// 3. 아래 코드와 같이 붙이지 않고 다음줄에 값을 명시해 주는것도 가능하다

// 과제
// 여러분이 최애하는 영화배우의 이름을 담는 변수를 작성해주세요 (타입 String?)
// let num = Int("10") -> 타입은 뭘까요??

var actor: String? = "최민식"
let num = Int("10")
// 문자열이라도 Int타입으로 넣을수 있으나 예컨대 "10가나다" 라고 값을 바꾼다면 "nil"이 출력되므로 위 상수의 타입은 "Int Optional" 이다

// 고급 기능 4가지

// Forced unwrapping
// Optional binding (if let)
// Optional binding (guard)
// Nil coalescing

// Forced unwrapping -> 억지로 박스를 까보기
// Optional binding (if let) -> 부드럽게 박스를 까보기 1
// Optional binding (guard) -> 부드럽게 박스를 까보기 2
// Nil coalescing -> 박스를 까봤더니, 값이 없으면 디폴트를 줘보자

 carName = nil
// print(carName!) "!" 기호를 붙이지 않을경우 "Optional("땡크")" 가 출력이 되는데 이는 박스안에 상품이 들어있는 형태이므로 이를 까려면 변수 뒤에 "!"를 붙여주어 박스를 오픈하여 "땡크" 값만 출력할수 있다.

//부드럽게 까는 방법1 : 복잡

if let unwrappedCarName = carName {
    print(unwrappedCarName) // "carName" 값이 명시되어 있을경우
} else {
    print("Car Name 없다") // "carName" 값이 없을경우 nil 출력
}

//여행 계획표
//- 싱가폴
//- 싱가폴 맛집
//- 싱가폴 숙소
//
//여행 계획표
//- 싱가폴
//    - 누구 만나고
//        - 친구 누구도 부르고
//- 싱가폴 맛집
//- 싱가폴 숙소


//func printParsedInt(from: String) {
//    if let parsedInt = Int(from) {
//        print(parsedInt)
//    } else {
//        print("Int로 컨버팅 안된다 짜샤.")
//    }
//}

//printParsedInt(from: "100")
//printParsedInt(from: "헬로우 마이네임이즈")

//부드럽게 까는 방법 2 : 단순

func printParsedInt(from: String) {
    guard let parsedInt = Int(from) else {
        print("Int로 컨버팅 안된다 짜샤.")
        return
    }
    print(parsedInt)
    }

printParsedInt(from: "헬로우 마이네임이즈")

carName = "모델 3"
let myCarName: String = carName ?? "모델 S"
// ?? : "carName"이 nil일 경우 "모델 S"를 출력해달라는 의미이다

// ---- 도전 과제
// 1. 최애 음식이름을 담는 변수를 작성 (String?)
// 2. 옵셔널 바인딩을 이용해서 값을 확인해보기
// 3. 닉네임을 받아서 출력하는 함수 만들기, 조건 입력 파라미터는 String?

// 1
var favoriteFood: String? = "된장찌개"

// 2
if let foodName = favoriteFood {
    print(foodName)
} else {
    print("좋아하는 음식 없음")
}

// 3
func printNickName(name: String?) {
    guard let nickName = name else {
        print("nickname 만들어 보자")
        return
    }
    print(nickName)
}

printNickName(name: "unknown")
