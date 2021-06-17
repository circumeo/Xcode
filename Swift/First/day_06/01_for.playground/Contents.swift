import Cocoa

//반복문의 조건
//초기값, 증감, 조건
//149p

/* 초기값(from) : 3
   조건(through-자신을 포함, to-자신을 포함하지 않음) : 20 이하
   증강(by) : 2씩 증가

3, 5, 7, 9, 11, 13, 15, 17, 19 */

for i in 0...9{
    //i = 20, i는 상수이므로 변경 불가
    print(i)
}

//print(i), i는 for문 안에서만 사용가능한 내부변수
print("-----------------")

for i in 0..<9{
    print(i)
}

var arr = (0...9).reversed() //reversed # 결과를 역순으로 출력
print(arr)
for i in arr{
    print(i)
}

print("stride(from: 10, to: 20, by: 2)---------")
for i in stride(from: 10, to: 20, by: 2){
    print(i)
}

print("stride(from: 20, through : 10, by: -2)----------")
for i in stride(from: 20, through : 10, by: -2){
    print(i)
}

//10부터 100까지 짝수들의 합
var tot = 0
print("stride(from: 10, through : 100, by: 2)----------")
for i in stride(from: 10, through : 100, by: 2){
    tot += i
    //print("\(i) : \(tot)")
}
print("합계:\(tot)")

////20부터 100까지 3의 배수들의 합
tot = 0
print("stride(from: 20, through : 100, by: 1)----------")
for i in stride(from: 20, through : 100, by: 1){
    if i%3 == 0 {
    tot += i
    print("\(i) : \(tot)")
    }
}
