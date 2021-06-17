import Cocoa

var i = 10
while i < 5 {
    print("while 실행 \(i)")
    i += 1
}
print("while 종료 -------- \(i)")

i = 10
repeat {
    print("repeat~while 실행 \(i)")
    i += 1
}while i < 5
print("repeat~while 종료 -------- \(i)")
