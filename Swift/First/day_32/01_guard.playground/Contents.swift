import Cocoa

func avgGo(_ jum:Int...){
    
//    if jum.count == 0{
//        print("매개변수가 없음")
//        return
//    }
    
    guard jum.count != 0 else {
        print("매개변수가 없음")
        return
    }
    
    guard jum.count <= 5 else {
        print("과목 초과")
        return
    }
    
    var tot = 0
    for i in jum{
        tot += i
    
    }
    
    print(tot/jum.count)

}

avgGo(45,56,67)
avgGo()
avgGo(4,5,5,6,6,7)



var a = 0

//guard : return, break, throw 등 구간 안에서 탈출 방면으로 사용 가능
//guard a > 0 else {
//    print("a가 0")
//    return
//}


/*
 입력된 숫자가 소수인지 파악하는 함수를 구현하세요
 단, 입력 숫자가 2보다 작을 경우 "2 이상 입력 요망" 출력해 주세요
 */

func primeNumber(_ no:Int){
    
    guard no <= 2 else {
        print("2 이상 입력 요망")
        return
    }
    
    var str = "소수입니다."

    for i in 2..<no{
        if no % i == 0 {
            str = "소수가 아닙니다."
        }
    }
    
    print(no, str)
}

primeNumber(5)
primeNumber(24)
//primeNumber(-10)
primeNumber(2)
