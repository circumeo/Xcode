import Cocoa

class Exam{
    var name:String
    var jum:[Int]
    var res = 0
    
    init(_ name:String, _ jum:Int...){
        self.name = name
        self.jum = jum
    }
    
    func sub(_ jjj:[Int])->Int{
        var tot = 0
        for i in jjj{
            tot += i
        }
        return tot/jum.count
    }
    
    func calc(){
//        var tot = 0
//        for i in jum {
//            tot += i
//        }
//        res = tot/jum.count
        res = sub(jum)
    }
    
    //매개변수로 클로저 받음
    
    func calc2(_ ccc:([Int])->Int){
        res = ccc(jum)
    }
    
    func ppp(){
        print("\(name) \(jum) \(res)")
    }
}

var st1 = Exam("정우성", 58,79,91)
//print(st1)
//st1.calc()

func asdf(_ jjj:[Int])->Int{
    var tot = 0
    for i in jjj{
        tot += i
    }
    return tot/jjj.count
}

//st1.calc2(asdf)
//st1.calc2{
//    var tot = 0
//    for i in $0{
//        tot += i
//    }
//    return tot/$0.count
//}

st1.calc2{
    aaa in
    var res = aaa[0]
    for i in aaa {
        if res < i {
            res = i
        }
    }
    return res
}

st1.ppp()
