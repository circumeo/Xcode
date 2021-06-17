import Cocoa

func fn_1(){
    print("fn_1() 실행")
}

func fn_2()->Void{
    print("fn_2() 실행")
}

func fn_3(){
    print("fn_3() 실행1")
    
    print("fn_3() 실행2")
    return; //함수 종료
    print("fn_3() 실행3")
}

func calc(_ num:Int...){
    if num.count == 0{
        print("입력된 숫자가 없습니다.")
        return;
    }
    var tot = 0
    for i in num{
        tot += i
    }
    print("calc:", tot)
}

func fn_4()->Int{
    print("fn_4() 실행")
    return 100
}

func fn_5()->[Int]{
    print("fn_5() 실행")
    return [100, 200, 300, 400] //여러개를 리턴할 시 []를 명시하여 배열로 빠져나옴, 리턴값은 자료형과 같은 기호 사용
}

func fn_6()->(String,Int,Bool){
    print("fn_6() 실행")
    return ("정우성", 49, false)
}

var r1 = fn_1()
print(r1)

var r2 = fn_2()
print(r2)

fn_3()

calc(11,22,33,44)
calc()

var r4 = fn_4()
print(r4)

var r5 = fn_5()
print(r5)

var r6 = fn_6()
print(r6)

var name:String //이름, 나이, 결혼여부를 개별 항목으로 표시 가능
var age:Int
var marriage:Bool
(name,age,marriage) = fn_6()
print(name)
print(age)
print(marriage)
