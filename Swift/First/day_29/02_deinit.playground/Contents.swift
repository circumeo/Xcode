import Cocoa

class AAA{
    
    var a = 10
    var b = "아기상어"
    var cnt = 0
    
    init(_ a:Int){
        self.a = a
        
        print("생성자 실행 \(a), \(b)")
    }
    
    deinit {
        print("소멸자 실행 \(a), \(b), \(cnt)")
    }
    
    func ppp(){
        print("출력 : \(a), \(b)")
        cnt += 1
    }
}

var a1:AAA? = AAA(1111)
var a2:AAA? = AAA(2222)
a1!.ppp()
a1!.ppp()
a2!.ppp()
a2!.ppp()
a1!.ppp()

a1 = nil
