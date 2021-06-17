import Cocoa

let name = ["현  빈","원  빈","미스터빈","장희빈","커피빈"]
let exam = [
    [77,78,71],
    [57,58,51],
    [97,98,91],
    [67,68,61],
    [87,88,81]
]

//// 한명당 점수의 총합과 평균을 구하고 수우미양가를 적용하라

var res:[[Int]] = []
for ex in exam{
    var tot = 0
    for i in ex{
        tot += i
        print(i)
    }
    let avg = tot / ex.count
    //print("\(tot), \(avg)------------")
    res.append([tot, avg])
}
var ttt = ["가","가","가","가","가","가","양","미","우","수","수"]
for r in 0..<res.count{
    //let grade = ttt[8]
    print("\(name[r])\t \(exam[r]) \(res[r]) \(ttt[res[r][1]/10])")
}
print("------------")
typealias examData = (name:String, jum:[Int], tot:Int, avg:Int, grade:String)
var res2:[examData] = []
for i in 0..<exam.count{
    //print(i)
    var tot = 0
    for e in exam[i]{
        //print(e)
        tot += e
    }
    let avg = tot / exam[i].count
    //print(tot, avg)
    res2.append((name[i], exam[i], tot, avg, ttt[avg/10]))
}
for i in res2{
    print(i)
}
