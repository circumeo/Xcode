import Cocoa

// array(배열)과 튜플(tuple)의 차이는 배열은 여러가지 형태를 추가할수 있으나 튜플은 불가
// var names:Array<String>//<> # 제너릭(대괄호) 안에 배열형태 작성 = ["aaa", "222", "ccc", "444"]

var arr = [11,55,33,11,66,66,44]
print(arr)
print(arr.count)// 형태 개수
print(arr[0])// 0부터 시작
print(arr[1])

var no = 2

print(arr[no])
print("---------")
for i in 0..<7{ //arr.1 이나 arr.2 등 arr.count로 처리할시 원하는 자리까지 출력
    print(arr[i])
}
