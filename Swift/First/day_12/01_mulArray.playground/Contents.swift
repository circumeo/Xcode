import Cocoa
var arr1 = [   200,      300,       400]
var arr:[[Int]] = [                                               //1차원
              [11,       22,        33,        44,        55],    //arr[0]
              [200,      300,       400],                         //arr[1]
              [123,      456,       789],                         //arr[2]
              [101,      202,       303]                          //arr[3]
    //2차원 arr[?][0], arr[?][1], arr[?][2], arr[?][3], arr[?][4]
]   //2차원 이므로 대괄호 한개를 명시할시 에러

print(arr)
print(arr.count) // 내용의 개수가 아닌 묶음 개수를 카운트
print(arr[0])
print(arr[1])
print(arr[2])
print(arr[3])
print(arr[2][1])

//arr.append(9876) 정수이므로 배열추가X
arr.append([1357,2468,3690])
print(arr)
