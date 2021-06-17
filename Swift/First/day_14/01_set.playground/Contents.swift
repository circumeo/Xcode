import Cocoa

var ss1:Set = ["red","blue","yellow","blue"]
var arr1:Set = ["red","blue","yellow","blue"]
print(ss1)
print(arr1)

var ss2 = Set<Int>()
var ss3:Set<Int> = []
var ss4:Set<Int> = Set<Int>()

print(ss2)
print(ss3)
print(ss4)
print(ss1.count)
print(arr1.count)
ss1.insert("green")
ss1.insert("red")
print(ss1)
//print(ss1[0]) Array와 같이 몇번째 값을 가져온다는 개념은 성립되지 않는다.
print(ss1.contains("green"))
print(ss1.contains("pink"))
ss1.remove("blue")
print(ss1)
ss1.remove("orange") //없는 값을 remove 할 경우 nil
print(ss1)
print(ss1.isEmpty) //isEmpty - 비워져 있는지 확인

for i in ss1{
    print(i)
}

ss1.removeAll()
print(ss1)
print(ss1.isEmpty)

print("----------------")
print(Int.random(in: 10...15)) // random - 실행을 할 때마다 값이 변함

var lotto = Set<Int>()
var lotto2 = [Int]()

while true { // 7개가 되면 멈춤
    let no = Int.random(in: 1...45)
    lotto.insert(no)
    lotto2.append(no)
    if lotto.count == 7{
        break
    }
}
print(lotto.sorted()) // sorted - 정렬
print(lotto2.sorted())

//// 숫자범위 1 -> 100 까지의 5 X 5 빙고를 구현해 주세요

print("----------------")
var bingo = Set<Int>()
var bingo2 = [Int]()

while true {
    let no = Int.random(in: 1...100)
bingo.insert(no)
bingo2.append(no)
if bingo.count == 25{
    break
    }
}

//print(bingo)

var no = 0
for i in bingo{
    no += 1 // 숫자마다 번호를 부여 후 자리를 확인
    print(i, terminator:"\t") // []를 나와 옆으로 정렬
    if no%5==0 {
        print()
    }
}
