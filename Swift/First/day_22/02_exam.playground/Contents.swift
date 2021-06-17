import Cocoa

class Exam{
    var name = ""
    var jum:[Int]?
    var tot = 0
    var avg = 0
    
    func input(_ name:String, _ jum:Int...){
        self.name = name
        self.jum = jum
        calc()
        ppp()
    }
    func calc(){
        tot = 0
        for i in jum! {
            tot += i
        }
        avg = tot / jum!.count
    }
    func ppp(){
        print("\(name) \(jum!) \(tot) \(avg)")
    }
}

var st1 = Exam()
var st2 = Exam()
var st3 = Exam()
st1.input("정우성", 77, 78, 72)
st2.input("정좌성", 97, 98, 92)
st3.input("정남성", 87, 88, 82)

//st1.calc()
//st2.calc()
//st3.calc()

//st1.ppp()
//st2.ppp()
//st3.ppp()

//var st = [Exam(), Exam(), Exam()]
var st = [Exam](repeating: Exam(), count: 3)
st[0].input("정우성", 77, 78, 72)
st[1].input("정좌성", 97, 98, 92)
st[2].input("정남성", 87, 88, 82)

//직사각형 클래스를 정의하고 5개의 직사각형을 생성하여 넓이, 둘레를 출력하세요

class a{
    var g = 21
    var s = 14
    
    func fn_1(){
        print("a.직사각형1")
    }
    
    func fn_2(){
        print("a.직사각형2")
    }
    
    func fn_3(){
        print("a.직사각형3")
    }
    
    func fn_4(){
        print("a.직사각형4")
    }
    
    func fn_5(){
        print("a.직사각형5")
    }
}
