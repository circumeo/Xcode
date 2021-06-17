import Cocoa

let data = [234,33,11,24,567,88,987,13,256,2,8,721,56]

var even = [Int]()
var three = [Int]()
var four = [Int]()

for i in data{
    if i % 2 == 0{
        even.append(i)
    }
    if i % 3 == 0{
        three.append(i)
    }
    if i % 4 == 0{
        four.append(i)
    }
    //print(i)
}

print(even)


even.sort()
three.sort(by: >)
four.sort()

//print(three)
print(four)
print("--------------")
print(even[0..<3])
//print(even[0,2])
print(three[0...1])

print(four[four.count/2])

////  3의 배수는 큰 숫자 기준 2개 출력
/// 4의 배수는  가장 중간 숫자 1개 출력

var arr5 = [Int](repeating: 5, count: 8)
print(arr5)

var name = ["원빈","현빈","투빈","장희빈"]
var cnt = 4
var arr7 = Array(repeating: 7, count: name.count)
print(arr7)

let arr = [87,92,34,1,87,56,48,66,1,94,32]

print(arr)

let arrs = arr.split(separator: 1)

print(arrs)

for i in arrs{
    print(i)
}

var arr2 = [11,22,33]
let arr3 = [777,555,333,111]
let arr4 = arr2 + arr3
print(arr2)
print(arr3)
print(arr4)
arr2 += [77,88,99]
print(arr2)


var arr6 = ["aa","bbbb","ccc"]
var tt = arr6.joined(separator: "-")
print(tt)

//var arr8 = [123, 45, 6789]
//var tt2 = arr8.joined(separator: "-")
//print(tt2)


//var arr8 = [123, 45, 6789]
//var tt2 = arr8.joined(separator: 1)
//print(tt2)
