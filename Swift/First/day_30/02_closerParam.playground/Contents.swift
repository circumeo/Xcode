import Cocoa

func fn_1( _ a:Int, ff:()->() ){
    print("fn_1() 시작 \(a)----")
    
    ff()
    
    print("fn_1() 끝----")
}

func fn_2(){
    print("fn_2() 실행")
}

fn_1(100, ff:fn_2)
