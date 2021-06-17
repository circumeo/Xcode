import Cocoa

////합집합

let ss1:Set = [1,2,3,4,5,6]
let ss2:Set = [4,5,6,7,8,9]

let uu = ss1.union(ss2) //ss2와 합치겠다
print(uu)

////교집합

let inter = ss1.intersection(ss2)
print(inter)

let sd = ss1.symmetricDifference(ss2) // 합집합에서 교집합을 뺀 나머지
print(sd)

let sub1 = ss1.subtracting(ss2) // ss1 빼기 ss2
print(sub1)

let sub2 = ss2.subtracting(ss1) // ss2 빼기 ss1
print(sub2)
