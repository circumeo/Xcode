import Cocoa

class AAA{
    
    var arr = [10,10,10,10]{
        didSet{

            for i in arr{
                if i<0 || i>100{
                    arr = oldValue
                    print("범위 에러")
                }
            }
            print("arr : \(oldValue) -> \(arr)")
            
        }
    }
}


var a1 = AAA()

a1.arr[1] = 80
a1.arr[2] = 180
a1.arr[3] = -10
a1.arr[2] = 90


class Exam{
    var name:String!
    var jum=[0,0,0]{
        didSet{
            
            for i in jum{
                if i>100 || i<0{
                    print("범위에러")
                    jum = oldValue
                }
            }
        }
    }

    var tot:Int{
        get{
            var ttt = 0
            for i in jum{
                ttt += i
            }
            return ttt
        }
    }
    var avg:Int{
        get{
            return tot/jum.count
        }
    }
    
    func ppp(){
        print(name!, jum, tot, avg)
    }
}

var ee = Exam()
ee.name = "현빈"
ee.jum = [87,-23,89]
ee.jum = [76,71,123]
ee.jum = [65,78,98]
ee.ppp()
