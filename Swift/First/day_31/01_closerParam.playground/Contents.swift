import Cocoa

let arr = [34,56,7,23,11,9,65,96,23,48]

func arrEven(_ data:[Int], _ fn:(Int)->Bool)->[Int]{
    var res=[Int]()
    
//    func evenChk(_ a:Int)->Bool{
//        //print("evenChk 실행")
//        return a%2 == 0
//    }
    
    for i in data{
//        if i%2 == 0{
//            res.append(i)
//        }
        
        if fn(i){
            res.append(i)
        }
    }
    
    return res
}

let evenChk = {(a:Int)->Bool in
    
    return a%3 == 0
}

let r1 = arrEven(arr, evenChk)
print(r1)


/*
 배열을 입력받아 가장 큰수 / 작은수를 출력하는 함수를 구현하세요
 
 매개변수로 입력 받는 함수로 큰수, 작은수 처리 기준으로 해주세요
 */

func minMax(_ data:[Int], _ fn:(Int, Int)->Bool)->Int{
    var res = data[0]
    
    for i in data{
        if fn(res, i){
            res = i
        }
    }
    
    return res
}
//[34,56,7,23,11,9,65,96,23,48]
let mmm = {(me:Int, you:Int)->Bool in
    return me < you
}
//let r2 = minMax(arr, mmm)
var r2 = minMax(arr, {(me:Int, you:Int)->Bool in return me < you})
print(r2)

print("클로저 간소화")
//1. 매개변수 자료형 생략
r2 = minMax(arr, {(me, you)->Bool in return me < you})
print("1. 매개변수 자료형 생략", r2)

//2. 매개변수, 리턴 이름 생략
// 매개변수 이름이 지정이 안되어 매개변수순서 -> $번호로 알려야 함
// me -> $0 , you -> $1
r2 = minMax(arr, { return $0 < $1 })
print("2. 매개변수, 리턴 이름 생략",r2)

//3. 리턴 생략
r2 = minMax(arr, { $0 < $1 })
print("3. 매개변수, 리턴 생략",r2)

//4. 함수 기능이 연산자 구현인 경우 연산자만 넣어 가능
/* 연산항, 결과의 자료형이 맞는 경우 매개변수 이름, 리턴 모두 생략 가능하고
   연산자만 입력 가능
 
 매개변수로 받는 함수 형태가 _ fn:(Int, Int)->Bool 이기 때문에
 $0 > $1 = Bool가 > 로 처리 ($0, $1, 리턴형태 모두 생략)
 
 매개변수로 받는 함수 형태가 _ fn:(Int, Int)->\Int 라면
 $0 + $1 = Int로 + 로처리 ($0, $1, 리턴형태 모두 생략)
 */

r2 = minMax(arr, <)
print("4. 함수 기능이 연산자 구현인 경우 연산자만 가능",r2)
