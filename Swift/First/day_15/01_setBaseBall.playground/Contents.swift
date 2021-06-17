import Cocoa


let t1:Set = ["박재상" , "박정권" , "최정" , "김광현" , "엄정욱" , "박희수" , "이호준"]
let t2:Set = ["이호준" , "엄정욱" , "박재홍" , "이신협" , "장동건"]
let fa:Set = ["이병규", "이승엽" , "박정권" , "장동건" , "박용택" , "홍성흔"]

print("변경전")
print("1군 \(t1)")
print("2군 \(t2)")
print("FA \(fa)")

let newT1 = t1.subtracting(t2).subtracting(fa)
let newT2 = t2.subtracting(fa)
let newFA = fa.subtracting(t2).subtracting(t1)
print("변경후")
print("1군 \(newT1)")
print("2군 \(newT2)")
print("FA \(newFA)")
