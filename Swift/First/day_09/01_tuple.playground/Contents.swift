import Cocoa
// - tuple

var a = 10
print("a:\(a)")

var pp1 = ("정우성", true, 187)
print("pp1:\(pp1)")
print("pp1.0:\(pp1.0)") //.1 .2 를 입력시 순서대로 출력
print("pp1.1:\(pp1.1)")
print("pp1.2:\(pp1.2)")
//print("pp1.3:\(pp1.3)")

pp1.0 = "정좌성" // 항목 변경 가능
//pp1.3 = 1.2 항목 추가 불가
print("pp1:\(pp1)")

/*
 for i in 0..<3 {
    print(i)
    print(pp1.i) 이러한 표기 사용 불가
}
 */

var pp2:(name:String, marriage:Bool, height:Int) = ("정남성", false, 173)
print("pp2:\(pp2)")
print("pp2.0:\(pp2.0)")
print("pp2.name:\(pp2.name)")
print("pp2.marriage:\(pp2.marriage)")
print("pp2.height:\(pp2.height)")

var pp3:(name:String, _:Bool, height:Int) = ("정북성", true, 169) //_(언더바) 이름 생략 기능
print("pp3:\(pp3)")
print("pp3.0:\(pp3.0)")
print("pp3.name:\(pp3.name)")
//print("pp3.marriage:\(pp3.marriage)")
print("pp3.1:\(pp3.1)")//언더바 대입시 문자로 대체 불가하여 숫자로만 가능
print("pp3.height:\(pp3.height)")

// - typealias

// pp2:(name:String, marriage:Bool, height:Int) = ("정남성", false, 173) 처럼 변수 문장이 길때 별칭을 지정하여 줄일수 있으며 이것을 typealias 라고 한다.
typealias PerType = (name:String, marriage:Bool, height:Int)
var pp4:PerType = ("정중성", false, 188)
print("pp4:\(pp4)")
print("pp4.0:\(pp4.0)")
print("pp4.name:\(pp4.name)")
print("pp4.marriage:\(pp4.marriage)")
print("pp4.height:\(pp4.height)")

var r:(name:String, w:Int, h:Int, area:Int, border:Int) = ("직사각형", 12, 15, 0, 0) // area, border 처럼 나중에 값을 구해야 할때는 일단 "0"으로 대입
r.area = r.w * r.h
r.border = (r.w + r.h) * 2
print("r:\(r)")
print("r.name:\(r.name)")
print("r.w:\(r.w)")
print("r.h:\(r.h)")
print("r.area:\(r.area)")
print("r.border:\(r.border)")
