import Cocoa

var arr1 = [11,55,22,33,55,22,66,44]

for i in arr1{
    print(i)
}

var arr2:[Int] = [1,3,5,7]
print(arr2)

/* var arr3 = []
print(arr3) */

var arr4:[Int] = [] // 15번줄부터 25번줄까지의 공식은 같은 값을 도출하므로 같은 의미의 공식이다.
print(arr4)

var arr5 = [Int]()
print(arr5)

var arr6:Array<Int> = []
print(arr6)

var arr7 = Array<Int>()
print("----------------:\(arr7)")

var arr8 = Array([12,34,56])
print(arr8)

var arr9 = Array(0...10)
print(arr9)

var arr10 = Array(10...20)
print(arr10)

print("arr9[0]:\(arr9[0])")
print("arr9[1]:\(arr9[1])")

print("arr10[0]:\(arr10[0])")
//print("arr10[1]:\(arr10[1])")

var arr11 = Array( stride(from: 50, to: 60, by: 2) )
print("arr11:\(arr11)")

let exam = [78,76,79,72]
var tot = 0
for i in exam{
    tot += i
    print(i, tot)
}
var avg = tot / exam.count
print(tot, avg)

////  67, 73, 21, 156, 790, 32, 81, 95, 66, 1234 ,567, 88 짝수들의 합과 평균을 구하세요

let nums = [67 , 73, 21, 156, 790, 32, 81, 95, 66, 1234, 567, 88]

tot = 0
var cnt = 0
for i in nums{
    
    if i%2 == 0 {
        tot += i
        cnt += 1
    }
}

avg = tot / cnt

print(tot, avg, cnt)
