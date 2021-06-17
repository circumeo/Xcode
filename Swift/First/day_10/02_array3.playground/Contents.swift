import Cocoa

var arr1 = [11,55,22,33,55,22,66,44]

print("[검색]")
print("arr1:\(arr1)")
print("arr1[0]:\(arr1[0])")

var arr2 = arr1[2...4]
print("arr[2..4]:\(arr2)")
print("arr.startIndex:\(arr1.startIndex)")// start, end index 모두 count와 같은 개념
print("arr.endIndex:\(arr1.endIndex)")
print("arr1.index(of:55):\( arr1.index(of:55) )")// 55라는 값이 몇번째 자리에 있는지를 구함
print("arr1.index(of:98765):\( arr1.index(of:98765) )")// 없으면 "nill"

print("[변경]")
arr1[3] = 3333
print("arr1:\(arr1)")
arr1[4...6] = [100,200]// 원소를 대치할뿐 아니라 개수도 변경
print("arr1:\(arr1)")

print("[추가, 제거]")
arr1.append(300)
print("append(300):\(arr1)")// 마지막에 "300" 추가
arr1.insert(400, at: 2)
print("insert(400, at: 2):\(arr1)")// at에 작성된 자리 순서에 값 추가
arr1.remove(at: 5)
print("remove(at: 5):\(arr1)")// at에 작성된 자리 순서에 값 제거
arr1.removeSubrange(1...3)
print("removeSubrange(1...3):\(arr1)")// 원하는 자리 순서에 복수 값 제거
arr1.removeFirst()
print("removeFirst():\(arr1)")// 첫번째 값 제거
arr1.removeLast()
print("removeLast():\(arr1)")// 마지막 값 제거

print("[가공 정보]")
var arr3 = arr1.dropFirst()// 첫번째 값 추출
print("dropFirst():\(arr1)")
print("arr3:\(arr3)")

var arr4 = arr1.dropLast()// 마지막 값 추출
print("dropLast():\(arr1)")
print("arr4:\(arr4)")

print("arr1:\(arr1)")
print("arr4:\(arr1.min())")// 최소값 추출
print("arr4:\(arr1.max())")// 최대값 추출

arr1.reverse()
print("reverse():\(arr1)")// 값 순서를 뒤집는다.
arr1.sort()
print("sort():\(arr1)")// 작은 값 부터 정렬(오름차순)
arr1.sort(by: >)
print("sort(by: >):\(arr1)")// by 항목에 부등호로 정렬 방향 표시


// 예제 # 무작위로 숫자가 있을때 짝수들만 모아 그중 가장 작은 수 또는 큰수를 출력하라

let q = [11,55,22,33,55,22,66,44]
var cnt = 0
for x in q{
    
    if x%2 == 0 {
    cnt += 1
    }
}

print(cnt)
