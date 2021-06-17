import Cocoa

//스택 : LIFO(last in first out)
//전역변수(var a = 100000): 어디서나 접근이 가능하여 보안에 취약하므로 가급적 매개변수와 지역변수를 활용

var a = 100000
func fn_1(){ //caller 부르는것
    var b = 20 // 지역변수 -- 현재 함수 내부에서만 작동
    print("fn_1() 시작 \(a) , \(b)")
    fn_2() //callee 불려지는것
    a += b
    print("fn_1() 끝 \(a) , \(b)")
}

func fn_2(){
    var c = 300
    //print("\tfn_2() 시작 \(a)")
    print("\tfn_2() 시작 \(a), \(c)")
    fn_3()
    a += c
    print("\tfn_2() 끝 \(a), \(c)")
}

func fn_3(){
    var d = 4000
    print("\t\tfn_3() 시작 \(a), \(d)")
    a += d
    print("\t\tfn_3() 끝 \(a), \(d)")
}

fn_1()
print("main : \(a)")
