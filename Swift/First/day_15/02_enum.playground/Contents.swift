import Cocoa

enum WeekDay {
    case sun, mon, tue, wed, thu, fri, sat
}

//print(WeekDay)
print(WeekDay.mon)

var wd = WeekDay.sun
print(wd)
wd = .wed
print(wd)
//wd = wed
//wd = WeekDay.ttt
//print(wd)

enum Nums:Int{
    case ten=10, hundred = 100,thousand = 1000
}

var nn = Nums.ten

print(nn, nn.rawValue, nn.rawValue+100)


enum Nums2:Int{
    case one, two, tt = 333, ff, five = 50, ss , se
    //    0    1      333   334      50     51   52
}

print(Nums2.one, Nums2.one.rawValue)
print(Nums2.two, Nums2.two.rawValue)
print(Nums2.tt, Nums2.tt.rawValue)
print(Nums2.ff, Nums2.ff.rawValue)
print(Nums2.five, Nums2.five.rawValue)
print(Nums2.ss, Nums2.ss.rawValue)
print(Nums2.se, Nums2.se.rawValue)


enum WeekDay2:String {
    case sun, mon="월요일", tue="火", wed, thu="목", fri, sat="saturday"
}
print(WeekDay2.sun, WeekDay2.sun.rawValue)
print(WeekDay2.mon, WeekDay2.mon.rawValue)
print(WeekDay2.tue, WeekDay2.tue.rawValue)
print(WeekDay2.wed, WeekDay2.wed.rawValue)
print(WeekDay2.thu, WeekDay2.thu.rawValue)
print(WeekDay2.fri, WeekDay2.fri.rawValue)
print(WeekDay2.sat, WeekDay2.sat.rawValue)


print( Nums(rawValue: 100)! )


enum Size:Int{
    case XXL=110, XL=105, L=100, M=95, S=90
}

let price:[Size:Int] = [.XXL:30000, .XL:27000, .M:22000 ]

let mySize = Size(rawValue: 105)!
print(price[mySize]!)


/*
 커피종류
 americano, africano, asiano
 2200        2500       2900
 
 총 커피 주문 금액을 출력하세요
 
 ex) 아메리카노, 아시아노, 아메리카노, 아프리카노, 아시아노, 아메리카노
 
 */
