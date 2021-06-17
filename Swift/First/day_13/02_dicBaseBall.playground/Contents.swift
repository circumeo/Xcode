import Cocoa

let hit = [3,5,8,1,3,6,8,1,3,5,3,8]

var res = [Int:Int]()

for i in hit {
    //print(i, res, res[i])
    if res[i] == nil{ //i가 없다면
    res[i] = 1 //최초 값 1
    }else{ //있다면
        res[i]! += 1 //1 누적 증가
    }
}

////  값이 작은 순서대로 정렬하라

var kks = res.keys
for i in kks.sorted(){
    print("\(i) : \(res[i]!)")
}
