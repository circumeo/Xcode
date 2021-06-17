import Cocoa

class AAA{
    
    init(_ a:Int, _ b:Int, _ c:Int){
        self.a = a
        self.oriB = b
        self.c = c
    }
    
    init(){
        
        c = 300
    }
    
    var a:Int = 123
    
    var oriB:Int!
    let c:Int
    
    var b:Int{  //property
        get{  //호출시 실행
            print("b의 get 실행")
            return oriB
            
        }set(vv){ //대입시 실행
            print("a의 set 실행 \(vv)")
            oriB = vv
        }
    }
    
    var cc:Int{
        get{
            return c*10
        }
    }
}


var a1 = AAA()
a1.a = 456
a1.b = 789   //대입할 경우 set 실행
print("a1.a : ",a1.a)
print("a1.b : ",a1.b)
print("a1.c : ",a1.c)
print("a1.cc : ",a1.cc)
var a2 = AAA(12,34,56)
print("a2.a : ",a2.a)
print("a2.b : ",a2.b)
print("a2.c : ",a2.c)
print("a2.cc : ",a2.cc)

