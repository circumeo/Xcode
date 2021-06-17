import Cocoa

class Exam{
    let name:String!
    let jum:[Int]!
    
    init(_ name:String, _ jum:Int...){
        self.name = name
        self.jum = jum
    }
    
    var tot:Int{
        get{
            var res = 0
            for i in jum{
                res += i
            }
            return res
        }
    }
    
    var avg:Double{
        get{
            
            return Double(tot)/Double(jum.count)
        }
    }
    
    func ppp(){
        print(name!, jum!, tot, avg)
    }
}

let ex = Exam("이효리",76,63,88)
//ex.name = "삼효리"
//ex.jum = [99,98,97]
//ex.jum[1] = 100
print(ex.name!)
print(ex.jum!)
print(ex.tot)
print(ex.avg)

let arr = [
    Exam("정우성",76,73,78),
    Exam("정좌성",66,63,67),
    Exam("정중성",86,83,89),
    Exam("정남성",56,53,55),
    Exam("정북성",96,93,93)
]

for i in arr{
    i.ppp()
}


/*
 직사각형 클래스를 구현하세요
 넓이와 둘레를 get으로 출력하세요
 */

class Rectangle{
    let w:Int, h:Int
    
    init(_ w:Int, _ h:Int){
        self.w = w
        self.h = h
    }
    
    var area: Int{
        get{
            return w * h
        }
    }
    var border:Int{
        get{
            return (w + h) * 2
        }
    }
    
    func ppp(){
        print("직사각형: \(area), \(border)")
    }
}

let rec = [
    Rectangle(5,6),
    Rectangle(10,5),
    Rectangle(8,7)
]

for i in rec{
    i.ppp()
}
