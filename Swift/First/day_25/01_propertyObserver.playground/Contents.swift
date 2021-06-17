import Cocoa

class AAA{
    
    var a:Int{
        get{
            return 10
        }
        set(vv){
            print("AAA.a set: \(vv)")
        }
    }
    var b:Int{
        get{
            return 20
        }
        set{
            print("AAA.b set: \(newValue)")
        }
    }
    
    var c:Int = 30{
        willSet(newC){
            //   c  : 현재
            // newC : 바뀔 값
            
            print("c 대입 전:\(c) -> \(newC)")
        }
        didSet{
            //oldValue : 변경 전
            //   c     : 변경 후(현재)
            if c>100 {
                print("비정상 데이터!!!!!!")
                //c=99
                c = oldValue //예전값으로 복귀
            }else{
                print("c 대입 완료:\(oldValue) -> \(c)")
            }
        }
    }
    
    var d:Int = 40{
        willSet{
            print("d 대입 전:\(d) -> \(newValue)")
        }
    }
    
    
    var ori:Int = 50{
        willSet{
            print("ori 변경전:\(ori) -> \(newValue)")
        }
        didSet{
            print("ori 변경후:\(oldValue) -> \(ori)")
        }
    }
    
    var ggss:Int{
        get{
            return ori
        }
        set{
            ori = newValue
            print("ori 변경중")
        }
    }
}

var a1 = AAA()
a1.a = 100
print("a1.a:",a1.a)
a1.b = 200
print("a1.b:",a1.b)
print("a1.c:",a1.c)
a1.c = 300
print("a1.c:",a1.c)
print("a1.d:",a1.d)
a1.d = 400
print("a1.d:",a1.d)
print("a1.ggss:",a1.ggss)
a1.ggss = 500
print("a1.ggss:",a1.ggss)
