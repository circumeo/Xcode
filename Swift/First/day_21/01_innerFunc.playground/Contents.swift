import Cocoa

func fnTot_1(){
    print("fnTot_1() 시작----")
    sub_1()
    sub_2()
    print("fnTot_1() 끝----")
}

func sub_1(){ //전역함수
    print("sub_1() 실행")
}
func sub_2(){
    print("sub_2() 실행")
}

func fnTot_2(){
    func inner_1(){ //중첩함수 : 함수 내부에 함수 정의 -> 작용 범위가 정의된 함수내부(지역변수와 비슷)
        print("inner_1() 실행")
    }
    func inner_2(){
        print("inner_1() 실행")
    }
    print("fnTot_2() 시작----")
    inner_1()
    inner_2()
    print("fnTot_2() 끝----")
}

fnTot_1()
fnTot_2()
print("------------")
sub_1()
sub_2()
print("------------")
//inner_1()
//inner_2()
print("------------")
//fn_Tot_2().inner_1
//fnTot_2.inner_1()
