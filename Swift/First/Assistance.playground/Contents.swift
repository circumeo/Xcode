import Cocoa

/* var - 변수
   let - 상수
   Int - 숫자
   Float - 32비트 소수점
   Double - 64비트 소수점
   Bool - true, false
   Character - 단일 문자
   String - 복수 문자
 
 # Swit의 모든 데이터 타입 이름은 첫글자가 대문자로 시작하는 카멜케이스를 사용한다.
 # 모든 문자는 "" 사이에 입력하며 그사이에 변수를 입력하고 싶다면 \ , ()를 이용하며 이를 "문자열 보간법"이라고 한다.
*/

// - if -

//q랑 w가 다르면 "아니다" 출력
var q = 8
var w = 9
if q != w {
    print("아니다")
}
    /* }else{ // if를 다쓰고 마지막에 더이상 쓰려고 하지 않을때 씀
    print("아니다") */
    
//변수 두개가 같으면 "같다" 출력
let e = 8
let r = 8
    if e==r {
        print("같다")
}
    
// t 하고 y 하고 둘다 참이면 "야호" 출력
    /* || : 둘중 하나만 참이면 참
       && : 둘다 참이여야 참이다 */
    
    let t : Bool = true
    let y : Bool = false
    if t || y  {
        print("야호")
    }

// n이 ㄱ이면 ㄱ 출력 ㄴ이면 ㄴ 출력 ㄷ이면 ㄷ 출력, 셋다 아니면 ㄱㄴㄷ 출력
//else를 쓸 경우 else if를 넣는다.

var u : String = "ㄱ"
var i : String
if u == "ㄱ" {
    i = "ㄱ"
    print(i)
}else if u == "ㄴ" {
    i = "ㄴ"
    print(i)
}else if u == "ㄷ" {
    i = "ㄷ"
    print(i)
}else{
    i = "ㄱㄴㄷ"
    print(i)
}

//o가 0.5 이하시 "0.5이하" 출력, 0.1 이하시 "0.1 이하" 출력, 0일시 "0" 출력, 세개 모두 포함되지 않을시 "기타" 출력

var o : Double = 0.5
if o <= 0.5 {
    print("0.5 이하")
}
else if o <= 0.1 {
    print("0.1 이하")
}
else if o == 0 {
    print("0")
}
else{
    print("기타")
}

// - And, Or -

/* Or : || - 둘중 하나만 참이면 참
   And : && - 둘다 참이여야 참이다 */

// 0보다 크고 10보다 이하면 "야호" 출력
    var p : Int = 5
    if p > 0 && p < 10{
        print("야호")
    }

// 10보다 작거나 100보다 클때 "야호" 출력
    var a = 3
    if a < 10 || a > 100{
        print("야호")
    }


