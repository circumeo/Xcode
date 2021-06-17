import Cocoa

for h in 1...12{
    print("=== \(h)시 ===")
    for m in 0..<60{
            print("\(h)시 : \(m)분")
    }
    //print("\(h)시 : \(m)분") # 내부상수 m 사용불가
}

////구구단을 구현하세요
for dan in 2...9{
    print("[[[ \(dan)단 ]]]")
    for gob in 0...9{
        print("\(dan) x \(gob) = \(dan*gob)")
    }
}

////구구단을 옆으로 구현하세요
print("-------------")
for gob in 1...9{
    for dan in 2...9{
        print("\(dan) x \(gob) = \(dan*gob)", terminator:"\t")
    }
    print()
}
