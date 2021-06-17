import Cocoa

//함수의 정의
//함수이름 : fn_1
//매개변수 : aa:Int, bb:String
//리턴 : 1234

func fn_1(aa:Int, bb:String)->Int{
    print("매개변수 o, 리턴 o 실행")
    return 1234
}

func fn_2(){
    print("매개변수 x, 리턴 x 실행")
}

func fn_3(aa:Int, bb:Int){
    print("매개변수 O, 리턴 x 실행", aa, bb)
}

func fn_4()->String{
    print("매개변수 x, 리턴 O 실행")
    return "사슴벌레"
}

let rr = fn_1(aa:100, bb:"장수풍뎅이")
print(rr)

//fn_1(aa:100)
fn_2()
//fn_2(aa:123)
let r2 = fn_2() //다른 언어와 달리 에러가 나지 않음
print(r2)
let r3 = fn_3(aa:10, bb:20)
print(r3)
let r4 = fn_4()
print(r4)

////도형의 넓이, 둘레 계산
func rectangle(w:Int, h:Int){
    let area = w*h
    let border = (w+h)*2
    print("직사각형 넓이:\(area), 둘레:\(border)")
}

rectangle(w:5,h:6)
rectangle(w:10,h:15) // 다시 쓸수있음

////원, 직각삼각형의 넓이와 둘레를 구하는 함수를 구현하세요
/*
 원 : 반지름*반지름*pi, 반지름*2*pi
 직각삼각형 : 밑변*높이/2, 밑변+높이+빗변
 */

func circle(r:Double) {
    let pi = 3.14
    let area = r*2*pi
    let border = r*2*pi
print("원 넓이:\(area), 둘레:\(border)")
}

func tri(a:Int, b:Int, c:Int) {
    let area = a*b/2
    let border = a+b+c
print("직각삼각형 넓이:\(area), 둘레:\(border)")
}

circle(r:5)
circle(r:7)
tri(a: 5, b: 6, c: 8)
tri(a: 10, b: 5, c: 13)
