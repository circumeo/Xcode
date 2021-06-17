import Cocoa

var dd1 = ["red":"빨강","blue":"빨강","yellow":"노랑"] //"red":"붉은색"] //앞 key 값이 같을경우 에러, 뒤 values 값이 같을경우는 허용
print(dd1)

var dd2 = [String:Int]()
print(dd2)

var dd3:Dictionary<String,Int> = [:]
print(dd3)

var dd4:[String:Int] = [:]
print(dd4)

var dd5:Dictionary<String,Int> = Dictionary<String,Int>()
print(dd5)

var dd6:[String:Int] = Dictionary<String,Int>()
print(dd6)

//dd2 = [11:123, 22:123] String:Int 선언되었으므로 Int:Int 불가
dd2 = ["aa":123, "bb":456, "cc":123]
print(dd2)

print(dd2["bb"]!)
//print(dd2["ff"]) 값이 없으므로 nill 출력

dd2["bb"] = 789
print(dd2)
dd2["gg"] = 1000
print(dd2)

print(dd2.count)
print(dd2.isEmpty)
print(dd3.isEmpty)
dd2.removeValue(forKey: "cc")
print(dd2)

var kks = dd2.keys //앞 key 값 출력
print(kks)

var vvs = dd2.values //뒤 values 값 출력
print(vvs)

print(dd2["gg", default:1234]) //key 존재시 값 호출 : key가 없으면 default 호출
print(dd2["ss", default:1234])

for e in dd2 {
    //print(e)
    print(e.key, e.value)
}

print("----------------")
for (kk, vv) in dd2{
    print(kk, vv)
}

dd2.removeAll()
print(dd2)
print(dd2.isEmpty)
