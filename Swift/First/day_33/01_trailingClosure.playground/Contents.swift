import Cocoa

func fn_1(fff:()->()){
    print("fn_1() 시작-->")
    
    fff()
    
    print("fn_1() 끝-->")
}

func aaa(){
    print("aaa() 실행")
}

fn_1(fff:aaa)

fn_1(){()->() in print("클로저 정의 실행 1")}

fn_1{() in print("클로저 정의 실행 2")}  //실행 시키는 () 생략 가능


// 매개변수가 2개
func fn_2(a:Int, cc:()->()){
    print("fn_2() 시작-->\(a)")
    
    cc()
    
    print("fn_2() 끝-->\(a)")
}

fn_2(a: 10, cc: aaa)
//fn_2{()->() in print("클로저 정의 실행 3")}
//매개변수가 클로저외 다른 것이 있다면 실행 명령어 "()" 생략 불가
fn_2(a: 20){()->() in print("클로저 정의 실행 3")}


//리턴형이 있어도 후행클로저 가능
func fn_3(fff:()->())->Int{
    print("fn_3() 시작-->")
    
    fff()
    
    print("fn_3() 끝-->")
    
    return 100
}

print(    fn_3(){() in print("클로저 정의 실행 4")}    )
print(    fn_3{() in print("클로저 정의 실행 4")}    )  // () 생략 가능


func fn_4(fff:(Int, Int)->Int){
    print("fn_4() 시작-->")
    
    print("fff 리턴:" , fff(10,20))
    
    print("fn_4() 끝-->")

}

func bbb(_ a:Int, _ b:Int)->Int{
    print("bbb () 실행  \(a), \(b)")
    return 100
}

fn_4(fff:bbb)

fn_4{(x,y)->Int in print("클로저 정의 실행 4 \(x), \(y)")
    return 200
}

fn_4{ x,y ->Int in print("클로저 정의 실행 5 \(x), \(y)")
    return 300
}

fn_4{ x,y in print("클로저 정의 실행 6 \(x), \(y)")
    return 400
}

fn_4{ print("클로저 정의 실행 7 \($0), \($1)")
    return 500
}

fn_4{ $0 + $1 }


func fn_5(fff:(Int, Int)->Int)->Int{
    print("fn_5() 시작-->")
    
    return fff(10,20)
    
    print("fn_5() 끝-->")

}

print("fn_5: \( fn_5{ $0 + $1 } )")
