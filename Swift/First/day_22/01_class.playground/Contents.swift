import Cocoa

//정의, 선언, 생성, 호출 4단계
//method : Instance안에 귀속된 함수
//property : 변수

//클래스 정의
class AAA{
    var aa = 10 //속성=멤버변수=필드=상태=property
    var bb:String? //초기값이 필요하며 없을시에는 옵셔널로 표기
    
    func fn_1(){ //메소드=동작
        print("AAA.fn_1() 실행")
    }
    
    func fn_2(){ //메소드=동작
        print("AAA.fn_2() 실행", aa, bb) //멤버요소 접근가능
    }
    
    func fn_3(_ aa:Int, _ bb:String){
        /*
            1. 멤버요소와 지역/매개변수와 중복 가능
               - 중복시 지역/매개변수에게 우선순위가 있음
            
            2. 멤버, 지역변수간 중복이 발생된 경우
               self 접근자를 이용하여 멤버 접근 가능
         */
        
        print("AAA.fn_2() 실행", aa, bb, self.aa, self.bb)
    }
    
    func fn_4(_ aa:Int, _ bb:String){
        self.aa = aa
        self.bb = bb
    }
    
    /* 실행구문 작성불가
    if true{
        print("참이여")
    }
    print("와 정의부다")
}
*/
}

var a1:AAA //2. 선언
var a2:AAA = AAA()

a1 = AAA() //3. 생성 및 대입

print(a1)
print(a2)

print(a1.aa, a1.bb) //4. 인스턴스 멤버 호출
a1.fn_1()
print(a2.aa, a2.bb)
a1.fn_1()

a1.aa = 20
a2.bb = "아기상어"

print(a1.aa, a1.bb)
print(a2.aa, a2.bb)
a1.fn_2()
a2.fn_2()
a1.fn_3(123, "아빠상어")
a2.fn_4(1357, "엄마상어")
a2.fn_2()
