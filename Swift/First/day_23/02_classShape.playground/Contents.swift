import Cocoa

//직사각형 클래스를 정의하고 5개의 직사각형을 생성하여 넓이, 둘레를 출력하세요

class Rectangle{
    var area = 0
    var border = 0
    var w = 0
    var h = 0
    
    func input(_ w:Int, _ h:Int){
        self.w = w
        self.h = h
        calc()
        ppp()
    }
    
    func calc(){
        area = w * h
        border = (w + h) * 2
    }
    
    func ppp(){
        print("직사각형 : \(area), \(border)")
    }
}

var rr = [Rectangle](repeating: Rectangle(), count: 5)
rr[0].input(5,6)
rr[1].input(10,5)
rr[2].input(6,7)
rr[3].input(11,22)
rr[4].input(5,2)
