import Cocoa

class AAA{
    var a = 10
    var b = "아기상어"
    
    init( _ a:Int, _ b:String){
        print("와 초기화다",a,b, self.a, self.b)
        self.a = a
        self.b = b
    }
    
    init(){
        print("기본 생성자")
    }
    
    func ppp(){
        print(a, b)
    }
}

var a1 = AAA(11, "엄마상어")
print("------------")
var a2 = AAA()
print("------------")
var a3 = AAA(33, "할머니상어")
print("------------")
a1.ppp()
a2.ppp()
a3.ppp()

var arr = [ AAA(100,"장수풍뎅이"), AAA(200,"사슴벌레"), AAA()]
for i in arr{
    i.ppp()
}

print("----------------")

class Exam{
    var name = ""
    var jum:[Int]!
    var tot = 0
    var avg = 0
    
    init(_ name:String, _ jum:Int...){
        self.name = name
        self.jum = jum
        calc()
        ppp()
    }
    
    func calc(){
        tot = 0
        for i in jum{
            tot += i
        }
        avg = tot / jum.count
        
    }
    
    func ppp(){
        print(name, jum!, tot, avg)
    
    }
}

Exam("현빈",77,78,72)
Exam("원빈",57,58,52)
Exam("김우빈",97,98,92)
Exam("장희빈",67,68,62)
Exam("커피빈",87,88,82)

//for i in exams{
//    i.ppp()
//}
