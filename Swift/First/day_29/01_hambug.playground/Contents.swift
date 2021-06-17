import Cocoa

/*

 햄버거 메뉴를 구현하세요
 
 햄버거
 불고기(3000), 치즈(2100), 치킨(2500)
 
음료
 콜라(700), 오렌지주스(1200)
 
 사이드
 감자튀김(900), 오징어튀김(1400)
 
 주문 - 셋트, 불고기 ==> 불고기, 콜라, 감자튀김
       셋트, 불고기, 콜라, 오징어튀김 ==> 불고기, 콜라, 오징어튀김
       단품, 불고기, 콜라,...
 
 셋트인 경우 600원 할인
 
 */

class Hambug{
    let buger:String!
    let kind:String!
    let side:[String]
    
    var price = 0
    
    init(_ kind:String, _ buger:String, _ side:String...){
        self.kind = kind
        self.buger = buger
        self.side = side
        
        calc()
        ppp()
    }
    
    func calc(){
        let menu = ["":0,
                    "불고기버거":3000,
                    "치즈버거":2100,
                    "치킨버거":2500,
                    "콜라":700,
                    "오렌지주스":1200,
                    "감자튀김":900,
                    "오징어튀김":1400]
        
        price = menu[buger]!
        
        for i in side{
            price += menu[i]!
        }
        
        if kind == "셋트"{
            price -= 600
        }
    }
    
    func ppp(){
        print("\(kind!)=>\(buger!), \(side) : \(price)")
    }
    
    convenience init(_ kind:String, _ buger:String){
        if kind == "셋트" {
            self.init(kind, buger, "콜라", "감자튀김")
        }else{
            self.init(kind, buger,"")
        }
    }
}

Hambug("셋트", "불고기버거")
Hambug("단품", "불고기버거")
Hambug("셋트", "불고기버거", "오렌지주스", "오징어튀김")
Hambug("셋트", "치즈버거")
Hambug("셋트", "치킨버거")
Hambug("셋트", "불고기버거", "오렌지주스", "감자튀김")
Hambug("단품", "치즈버거")
Hambug("단품", "불고기버거", "오렌지주스", "오징어튀김")
