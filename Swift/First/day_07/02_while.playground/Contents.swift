import Cocoa

var i = 0 //초기값
while i < 10 { //조건
    print("while 문 실행 \(i)")
        i+=1 //증감
}
print("while 문 종료 --------")


i = 1
while i <= 10{
    if i % 2 == 0{
        print("짝")
    }else{
        print(i)
        }
    i += 1
}
print("홀짝 종료 ---------")


print("3,6,9 --------")
i = 1
while i <= 20{
    let one = i % 10
    
    if one%3 == 0 && one != 0{
        print("짝")
    }else{
        print(i)
    }
    i += 1
}
print("3,6,9 종료 --------")
