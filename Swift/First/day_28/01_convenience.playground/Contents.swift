import Cocoa

class AAA{
    let aa:Int!
    let bb:String!
    
    init(){
        aa = 10
        bb = "아기상어"
        print("기본 생성자")
    }
    
    init(_ aa:Int, _ bb:String){
        self.aa = aa
        self.bb = bb
        print("사용자 정의 생성자 1")
    }
    
    convenience init(_ aa:Int){
        self.init(aa, "아빠상어")
        print("사용자 정의 생성자 2")
    }
    
    func ppp(){
        print("\(aa!) , \(bb!)")
    }
}

var arr = [AAA(), AAA(29, "엄마상어"), AAA(32)]

for i in arr{
    i.ppp()
}


class Exam{
    let name:String!
    let jum:[Int]!
    let kind:String!
    var tot = 0, avg = 0
    
    init(_ kind:String, _ name:String , _ jum:Int...){
        self.kind = kind
        self.name = name
        self.jum = jum
        
        calc()
    }
    func calc(){
        tot = 0
        
        for i in jum{
            tot += i
        }
        avg = tot / jum.count
    }
    
    
    convenience init(_ name:String , _ kor:Int, _ eng:Int, _ mat:Int){
        self.init("일반" , name , kor,eng,mat)
    }
    
    convenience init(_ name:String , _ kor:Int){
        self.init("산업체" , name , kor)
        avg += 5;
    }
    
    convenience init(_ name:String , _ kor:Int, _ eng:Int, _ mat:Int, _ art:Int){
        self.init("특기생" , name , kor,eng,mat, art)
        spCalc()
    }
    
    func spCalc(){
        var buf = 0.0
        let rate = [0.1,0.15,0.15,0.6]
        for i in 0..<rate.count{
            buf += rate[i] * Double(jum[i])
        }
        avg = Int(buf)
    }
    
    func ppp(){
        print("\(kind!) \(name!) \(jum!) \(tot) \(avg)")
    }
    
}

var ee = [
    Exam("원빈",77,78,79),
    Exam("현빈",67),
    Exam("김우빈",37,58,79,91),
    Exam("젤리빈",87,89,81),
    Exam("커피빈",97,78,59,31),
]
for i in ee{
    i.ppp()
}


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
