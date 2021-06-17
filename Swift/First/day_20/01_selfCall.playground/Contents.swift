import Cocoa

//재기함수
var pre = ""
func fn(_ no:Int)->Int{ //반복문을 종료할 시 초기값, 조건, 증감 필요
    var res = no
    let myPre = pre
    pre += "\t"
    print(myPre+"fn() 시작", no, res)
    if no>1 { //조건
        res *= fn(no-1) //증감
    }
    print(myPre+"fn() 끝", no, res)
return res //가장 마지막 값을 가지고옴
}

let rr = fn(5) //초기값 : 3
print(rr)

print("----------------")

var pre2 = ""
func fn2(_ no:Int)->Int{ //반복문을 종료할 시 초기값, 조건, 증감 필요
    var su = no
    su -= su%2
    var res = su
    let myPre = pre2
    pre2 += "\t"
    print(myPre+"fn() 시작", su, res)
    if no>0 { //조건
        res += fn2(su-2) //증감
    }
    print(myPre+"fn() 끝", su, res)
return res //가장 마지막 값을 가지고옴
}

let rr2 = fn2(9) //초기값 : 3
print(rr2)
