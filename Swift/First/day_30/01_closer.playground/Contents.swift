import Cocoa

func fn_1()->Int{
    print("fn_1() 실행")
    return 1234
}

let aa = fn_1
let bb = fn_1()

fn_1()
aa()
//bb()
print("bb:\(bb)")

let cc = {( )->( ) in

    print("기본 익명함수 실행")
}

cc()

( {( )->( ) in

    print("기본 익명함수 실행2")
} )()

( {( )->( ) in

    print("기본 익명함수 실행3")
} )()

/* 매개변수 생략 불가

 ( { in

    print("기본 익명함수 실행4")
} )()

 */

( {(_ x:Int,_ y:Int) in
    print("익명함수 실행5 \(x), \(y)")
} )(100,200)

( {(x:Int,y:Int) in
    print("익명함수 실행6 \(x), \(y)")
} )(300,400)

( {(x, y) in
    print("익명함수 실행7 \(x), \(y)")
} )(500,"abcd")

( {x, y in
    print("익명함수 실행8 \(x), \(y)")
} )(700,"qwer")

let rr = ( {x, y -> Int in
    
    print("익명함수 실행9 \(x), \(y)")
    
    return 5678
} )(800,"aass") //함수 호출 800, "aass" 을 가지고 매개변수 자료형을 지정

print("rr: \(rr)")

/* 함수 정의를 상수로 대입하기에 실제 매개변수가 무엇인지 몰라 에러 발생

 let dd = {(x, y) -> Int in
    
    print("익명함수 실행10 \(x), \(y)")
    
    return 5678
}

*/

let ee = {(x:Int, y:Int) -> Int in
   
   print("익명함수 실행11 => \(x), \(y)")
   
   return 5678
}

print(ee(123,456))

////  매개변수들의 합계, 평균을 출력하는 클로저를 실행하세요

({ (arr:Int...) in
    var tot = 0
    for i in arr{
        tot += i
    }
    print("\(tot), \(tot/arr.count)")

})(48,67,91,85,21,64)
