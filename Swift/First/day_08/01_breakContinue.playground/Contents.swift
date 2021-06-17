import Cocoa

for i in 0...10{
    print("break 시작 ... \(i)")
    
    if i == 5{
        break
    }
    print("break 끝 ... \(i)")
}
print("break 종료")

for i in 0...10{
    print("continue 시작 ... \(i)")
    
    if i == 5{
        continue
    }
    print("continue 끝 ... \(i)")
}
print("continue 종료")


for i in 0...10{
    print("if 시작 ... \(i)")
    
    if i != 5{
        print("if 끝 ... \(i)")
    }
    
}
print("if 종료")
