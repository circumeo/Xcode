import Cocoa

typealias person = (name:String, age:Int, marriage:Bool)


var pers1 = [
    (name:"한가인",36, true),
    (name:"두가인",26, false),
    (name:"삼가인",46, true),
    (name:"사가인",16, false)
]

for pp in pers1{
    //print(pp.0)
    print(pp.name)
}

print("--------------------")
var pers2:[person] = [
    ("한가인",36, true),
    ("두가인",26, false),
    ("삼가인",46, true),
    ("사가인",16, false)
]

var tot = 0
for pp in pers2{
    
    print(pp.name)
    tot += pp.age
}

print(tot / pers2.count)
