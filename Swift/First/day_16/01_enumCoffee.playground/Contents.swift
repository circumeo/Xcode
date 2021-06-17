import Cocoa

/*
 커피종류
 americano, africano, asiano
 2200        2500       2900
 
 총 커피 주문 금액을 출력하세요
 
 ex) 아메리카노, 아시아노, 아메리카노, 아프리카노, 아시아노, 아메리카노
 
 */

enum menu:String{
    case americano="아메리카노", africano="아프리카노", asiano="아시아노"
    
}

let price = [
            menu.americano:2200,
            menu.africano:2500,
            menu.asiano:2900
]

let order = ["아메리카노", "아시아노", "아메리카노", "아프리카노", "아시아노", "아메리카노"]
var tot = 0
for i in order {
    let pp = price[menu.init(rawValue: i)!]!
    tot += pp
    print(i, pp)
}

print(tot)
