import Cocoa

var evenNumbers: [Int] = [2, 4, 6, 8]
//let evenNumbers2: Array<Int> = [2, 4, 6, 8]

// 내용 추가 방법
evenNumbers.append(10)
evenNumbers += [12, 14, 16]
evenNumbers.append(contentsOf: [18, 20])

//let isEmpty = evenNumbers.isEmpty // 비어 있는지 확인(Boolean)

evenNumbers.count

print(evenNumbers.first)

//evenNumbers = []
//let firstItem = evenNumbers.first

if let firstElement = evenNumbers.first {
    print("-->  first item is : \(firstElement)")
}


evenNumbers.min()
evenNumbers.max()

var firstItem = evenNumbers[0]
var secondItem = evenNumbers[1]
var tenthItem = evenNumbers[9]

//var twentithItem = evenNumbers[19]


// ------>

let firstThree = evenNumbers[0...2]
evenNumbers // 0번째 순서부터 2번째 순서 내용 가져온다

evenNumbers.contains(3)
evenNumbers.contains(4)

evenNumbers.insert(0, at: 0) //앞에 적은 수가 넣으려는 수, 뒤에적은 수가 인덱스 순서, 따라서 삽입하게 될시 기존 다른 수들은 뒤로 밀리게 된다.
evenNumbers

//evenNumbers.removeAll()
evenNumbers.remove(at: 0)
evenNumbers

evenNumbers[0] = -2 // 내용 단일 변경
evenNumbers

evenNumbers[0...2] = [-2, 0, 2] // 내용 복수 변경
evenNumbers

//evenNumbers.swapAt(0, 9) // 인덱스 순서를 적어 순서에 해당하는 내용 두개의 순서 교체

//for num in evenNumbers {
//    print(num)
//}

for (index, num) in evenNumbers.enumerated() {
    print("idx: \(index), value: \(num)")
}


let firstThreeRemoved = evenNumbers.dropFirst(3) // 앞 내용 3개를 숨기고 보고 싶을때
firstThreeRemoved

let lastRemoved = evenNumbers.dropLast()
lastRemoved

let firstThree2 = evenNumbers.prefix(3)
firstThree2 //앞에서 3번째 자리까지 가져온다

let lastThree = evenNumbers.suffix(3)
lastThree // 뒤에서 3번째 자리까지 가져온다

evenNumbers

//실무에서 많이 쓰는 명령
//isEmpty, count, [] 기호를 이용하여 순서에 접근하는 방법(28번째줄), for 문을 이용하여 순서대로 나열하는 방법(62번째줄)
