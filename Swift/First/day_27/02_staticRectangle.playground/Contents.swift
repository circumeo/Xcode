import Cocoa

/*
 직사각형의 넓이, 둘레의 합계와 평균을 구하세요
 */

class Rectangle{
    
    var area = 0{
        didSet{
           // print("area 진입")
            Rectangle.sArea += area
        }
    }
    var border = 0{
        didSet{
            Rectangle.sBorder += border
        }
    }
    
    static var cnt = 0, sArea = 0, sBorder = 0
    
    let w:Int, h:Int
    init(_ w:Int, _ h:Int) {
        
        self.w = w
        self.h = h
        Rectangle.cnt += 1
    }

    func ppp(){
        area = w * h
        border = (w + h) * 2
        print("\(area) , \(border)")
    }
    
    static func sPPP(){
        print("합계: \(sArea), \(sBorder)")
        print("평균: \(sArea/cnt),\(sBorder/cnt)")
    }
}

let arr = [
    Rectangle(5,6),
    Rectangle(10,5),
    Rectangle(8,4)
]

for i in arr{
    i.ppp()
}
Rectangle.sPPP()

