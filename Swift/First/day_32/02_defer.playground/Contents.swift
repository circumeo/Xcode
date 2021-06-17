import Cocoa

func fn(last:()->()){
    func sub_1(){
        print("sub_1() 실행")
    }
    
    func sub_2(){
        print("sub_1() 실행")
    }
    
    print("fn() 실행 1")
    defer {  //중간에 있어도 함수 마지막에 실행한다.
        sub_1()
        print("fn() 종료")
        last()
    }
    
    print("fn() 실행 2")
    sub_2()
    print("fn() 실행 3")
    
   
}

func gogo(){
    print("gogo() 실행")
}

fn(last:gogo)


func exam(_ reExam:(String)->(),
          _ success:(String)->(),
          _ name:String, _ jum:Int...){
    
    guard jum.count > 0 else{
        print("시험을 응시한 과목이 없습니다.")
        reExam(name)
        return
    }
    
    defer {
        success(name)
    }
    
    print("\(name) 성적을 처리하고 있습니다.")
}
func goExam(_ name:String){
    print("\(name) 시험 응시 중")
}

func examRes(_ name:String){
    print("\(name) 시험 결과에 맞는 입사 준비중입니다.")
}

func examRes2(_ name:String){
    print("\(name) 시험 결과에 맞는 진학 준비중입니다.")
}


exam(goExam,examRes,"정우성")
print("-----------------------")
exam(goExam,examRes,"정좌성",78,76,74)

print("-----------------------")
exam(goExam,examRes2,"정남성",78,76,74)

/*
 
 2개의 숫자를 입력 받아 처리 하는 함수를 구하세요
 2수의 차이가 10 이하면 --> 2수의 곱 계산 함수
              초과면 --> 2수 사이의 짝수 합 계산 함수
 
 */
