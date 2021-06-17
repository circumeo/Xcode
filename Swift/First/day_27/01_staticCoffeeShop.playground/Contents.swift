import Cocoa

class Coffee{
    let name:String
    let price:Int
    var cnt = 0
    
    init(_ name:String, _ price:Int) {
        self.name = name
        self.price = price
    }
    func ppp()->(Int, Int){
        print("\(name) : \(price) , \(cnt) => \(price*cnt)")
        
        return (cnt, price*cnt)
    }
}

class Hollys{
    
    let name:String
    
    init(_ name:String) {
        self.name = name
    }
    static var tot = [
        "아메리카노":Coffee("아메리카노", 2300),
        "아프리카노":Coffee("아프리카노", 2300),
        "아시아노":Coffee("아시아노", 2300)
    ]
    
    var myTot = [
        "아메리카노":Coffee("아메리카노", 2300),
        "아프리카노":Coffee("아프리카노", 2300),
        "아시아노":Coffee("아시아노", 2300)
    ]
    
    func order(_ name:String, _ cnt:Int){
        let price = myTot[name]!.price * cnt
        myTot[name]!.cnt += cnt
        Hollys.tot[name]!.cnt += cnt
        print("\(self.name) -> \(name) (\(cnt)) : \(price)")
    }
    
    func myPPP(){
        print("\(name) >>>")
        var cc = 0, tt = 0
        for i in myTot{
           let buf = i.value.ppp()
            cc += buf.0
            tt += buf.1
        }
        print("\(cc)잔, \(tt)")
    }
    
    static func ppp(){
        print("Hollys >>>")
        var cc = 0, tt = 0
        for i in tot{
           let buf = i.value.ppp()
            cc += buf.0
            tt += buf.1
        }
        print("\(cc)잔, \(tt)")
    }
}

var h1 = Hollys("역삼")
var h2 = Hollys("강남")
var h3 = Hollys("종로")

h1.order("아메리카노", 2)
h1.order("아프리카노", 3)
h2.order("아메리카노", 2)
h1.order("아시아노", 3)
h3.order("아메리카노", 4)
h2.order("아시아노", 3)

h1.myPPP()
h2.myPPP()
h3.myPPP()
Hollys.ppp()
