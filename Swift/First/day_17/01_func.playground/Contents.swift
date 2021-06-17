import Cocoa
//함수의 정의
//함수이름 : fn_1
//매개변수 : aa:Int, bb:String
// 리턴형 : Int
func fn_1(aa:Int, bb:String)->Int{
    print("fn_1 () 실행",aa, bb)
    return 100
}

//age : 레이블(인수) --> 함수호출
//aa : 매개변수 --> 함수내부
func fn_2(age aa:Int, name bb:String)->Int{
    print("fn_2 () 실행",aa, bb)
    return 987
}

//레이블 생략 : _
func fn_3(_ aa:Int, bb:String)->Int{
    print("fn_3 () 실행",aa, bb)
    return 300
}

var rr = fn_1(aa:123, bb:"asdf")
print(rr)

rr = fn_2(age:123, name:"asdf")
print(rr)

rr = fn_3(123, bb:"asdf")
print(rr)

print("매개변수 기본값 -----------")
func fn_4(aa:Int, bb:String, cc:String){
    print("fn_4() 실행",aa, bb, cc)
}
func fn_5(aa:Int, bb:String, cc:String="뚜루루뚜루"){
    print("fn_5() 실행",aa, bb, cc)
}

func fn_6(aa:Int, bb:String="티라노사우루스", cc:String){
    print("fn_6() 실행",aa, bb, cc)
}

func fn_7(_ aa:Int,_ bb:String, _ cc:String="뚜루루뚜루"){
    print("fn_7() 실행",aa, bb, cc)
}

//bb:String="티라노사우루스" 초기값이 의미가 없음
func fn_8(_ aa:Int,_ bb:String="티라노사우루스", _ cc:String){
    print("fn_8() 실행",aa, bb, cc)
}

fn_4(aa:11,bb:"아기상어",cc:"엄마상어")
//fn_4(aa:22,bb:"아기상어")
fn_5(aa:11,bb:"아기상어",cc:"엄마상어")
fn_5(aa:22,bb:"아기상어")
fn_6(aa:11,bb:"아기상어",cc:"엄마상어")
fn_6(aa:22,cc:"아기상어")
fn_7(11,"아기상어","엄마상어")
fn_7(11,"아기상어")
fn_8(11,"아기상어","엄마상어")
//fn_8(11,"엄마상어")  "엄마상어"--> bb로 인식


print("가변 매개변수 -----------")
func fn_9(name:String, jum:[Int]){
    print("fn_9() 실행",name, jum)
}
func fn_10(name:String, jum:Int...){
    print("fn_10() 실행",name, jum)
}

//func fn_11(name:String, jum:Int..., fr:String...){
//    print("fn_11() 실행",name, jum)
//}
func fn_12(name:String, jum:Int..., age:Int){
    print("fn_12() 실행",name, jum, age)
}

//func fn_13(name:String, jum:Int...,_ marriage:Bool){
//    print("fn_13() 실행",name, jum, marriage)
//}

//func fn_14(name:String, jum:Int..., _ age:Int = 36){
//    print("fn_14() 실행",name, jum, age)
//}

/// 일반매개변수 ... , 초기값 매개변수,   가변매개변수
func fn_15(_ name:String, _ age:Int = 36 , _ jum:Int...){
    print("fn_15() 실행",name, age, jum)
}

fn_9(name:"정우성",jum:[87,85,89])
//fn_9(name:"정우성",jum:87,85,89)

//fn_10(name:"정우성",jum:[87,85,89])
fn_10(name:"정우성",jum:87,85,89)
fn_12(name:"정우성",jum:87,85,89, age:49)

fn_15("정우성",24,87,94,76,51)
fn_15("정우성",24,87)
fn_15("정우성",24)
fn_15("정우성")
//fn_15()
