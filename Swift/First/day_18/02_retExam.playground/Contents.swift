import Cocoa

typealias exam = (name:String, tot:Int, avg:Int)
func stud(_ name:String, _ jum:Int...)->exam{
    var tot = 0
    for i in jum {
        tot += i
    }
    let avg = tot/jum.count
    return (name,tot,avg)
}

func stud2(_ data:(String, [Int]) )->exam{
    var tot = 0
    for i in data.1{
        tot += i
    }
    let avg = tot/data.1.count
    return (data.0,tot,avg)
}

let st1 = stud("정우성",71,79,72)
print(st1)

let arr = [
    ("현빈",[74,76,71]),
    ("원빈",[84,86,81]),
    ("젤리빈",[64,66,61]),
    ("커피빈",[54,56,51]),
    ("미스터빈",[94,96,91]),
]

var res=[exam]()

for i in arr {
    res.append( stud2(i) )
}

for i in res {
    print(i)
}

////소수인지 아닌지 확인하는 함수를 구현하세요

/* primeNumChk(1) //2 이상만 입력해 주세요
primeNumChk(7) //소수 입니다.
primeNumChk(10) //소수가 아닙니다. */

func primeNumChk( _ no:Int){
    if no<2 {
        print("2 이상만 입력해주세요")
        return;
    } // 풀이 완료
    
    var chk = true
    for i in 2..<no { //추가
        if no % i == 0 {
            chk = false
            break //for문 탈출
        }
    }
    if chk{
        print("소수입니다.")
    }else{
        print("소수가 아닙니다.")
    }
}

primeNumChk(1)
primeNumChk(10)
primeNumChk(13)
