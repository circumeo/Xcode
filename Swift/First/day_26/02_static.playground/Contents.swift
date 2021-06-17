import Cocoa

class AAA{
    var a = 10
    static var sa = 1000
    static var sb = 999
    
    var b = 0 {
        didSet{
            //sb += b 에러
            AAA.sb += b
            BBB.st += b // 다른 클래스의 static 도 접근 가능
            //BBB.t += b
        }
    }
    static var sc = 888{
        didSet{
            print("sc didSet \(oldValue) -> \(sc)")
            sa += sc //static은 static 접근 가능
        }
    }
}

class BBB{
    static var st = 100
    var t = 10
}

print(AAA.sa)
AAA.sa = 2000
var a1 = AAA()
a1.a = 20
print(a1.a)
//print(a1.sa) 에러
print(AAA.sa)

print(a1.b, AAA.sb)
a1.b = 111
print(a1.b, AAA.sb)
print(AAA.sa, AAA.sc)
AAA.sc = 123
print(AAA.sa, AAA.sc)
