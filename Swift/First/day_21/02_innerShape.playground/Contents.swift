import Cocoa

typealias shRes = (name:String, area:Double)

print("1. 중첩함수 결과를 리턴------------------------------")
func shape(_ line:Double...)->shRes{
    
    // 중첩함수 -> 외부함수의 매개변수, 지역변수 등 정의된 지역에서 접근가능한 객체 호출 가능
    
    
    func circle()->shRes{
        let pi = 3.14
        let area = line[0] * line[0] * pi  //line -> 외부함수의 매개변수 사용 가능
        //print("원 : \(area)")
        return ("원", area)
    }
    
    func rectangle()->shRes{
        
        let area = line[0] * line[1]
        //print("직사각형 : \(area)")
        return ("직사각형", area)
    }
    
    func triangle()->shRes{
        
        let area = line[0] * line[1] / 2
        //print("직각삼각형 : \(area)")
        return ("직각삼각형", area)
    }
    
    switch line.count {
        case 1:
            return circle()
        case 2:
            return rectangle()
        case 3:
            return triangle()
        default:
            return ("도형 아님",0)
    }
 
}

var rr:shRes
rr=shape(5)
print(rr)
rr=shape(5,6)
print(rr)
rr=shape(5,6,8)
print(rr)


print("2. 중첩함수를 변수로 받아 마지막에 실행하여 리턴-----------------------")

func shape2(_ line:Double...)->shRes{
    
    // 중첩함수 -> 외부함수의 매개변수(함수를 정의할 때 사용되는 변수), 지역변수 등 정의된 지역에서 접근가능한 객체 호출 가능
    
    
    func circle()->shRes{
        let pi = 3.14
        let area = line[0] * line[0] * pi  //line -> 외부함수의 매개변수 사용 가능
        //print("원 : \(area)")
        return ("원", area)
    }
    
    func rectangle()->shRes{
        
        let area = line[0] * line[1]
        //print("직사각형 : \(area)")
        return ("직사각형", area)
    }
    
    func triangle()->shRes{
        
        let area = line[0] * line[1] / 2
        //print("직각삼각형 : \(area)")
        return ("직각삼각형", area)
    }
    

    
    var rrr:()->shRes   //함수를 객체로 받을 변수 선언 :: 자료형 ()->shRes
    switch line.count {
        case 1:
            rrr=circle
        case 2:
            rrr=rectangle
        case 3:
            rrr=triangle
        default:
            return ("도형 아님",0)
    }
    
    return rrr()  // 받은 함수를 실행하여 리턴
}


rr=shape2(5)
print(rr)
rr=shape2(5,6)
print(rr)
rr=shape2(5,6,8)
print(rr)

print("3. 중첩함수에서 지역변수에 결과값을 넣고 마지막에 결과값 리턴--------------")

func shape3(_ line:Double...)->shRes{
    
    var area:Double = 0
    var name:String = ""
    
    
    func circle(){
        let pi = 3.14
        area = line[0] * line[0] * pi  //line -> 외부함수의 매개변수 사용 가능
        name = "원"
    }
    
    func rectangle(){
        
        area = line[0] * line[1]
        name = "직사각형"
    }
    
    func triangle(){
        
        area = line[0] * line[1] / 2
        name = "직각삼각형"
    }
 
    switch line.count {
        case 1:
            circle()
        case 2:
            rectangle()
        case 3:
            triangle()
        default:
            return ("도형 아님",0)
    }
    
    return (name, area)
}


rr=shape3(5)
print(rr)
rr=shape3(5,6)
print(rr)
rr=shape3(5,6,8)
print(rr)

print("------------------------------")
func circle22(){
    let pi = 3.14
    //let area = line[0] * line[0] * pi
    //print("원 : \(area)")
}


func shape22(_ line:Double...){
    
    switch line.count {
        case 1:
            circle22()
    
        default:
        print("도형이 아님")
    }
}

//shape2(5)
//shape2(5,6)
//shape2(5,6,8)

/*
 학생이름, 과목을 입력받아  구분, 이름,총점,평균 을 출력하세요
 구분
 과목 3개 : 일반
 과목 4개 : 특기
 */
