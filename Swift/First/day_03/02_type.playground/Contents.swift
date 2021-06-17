import Cocoa

/*
 bit(전구)             //이명    아스키     byte
                      BCD     ASCII    EBDCIC
 1 2  3   4       5   6       7        8
 2 4  8   16      32  64      128      256
 ------------------------------------------------
 0 00 000 0-9(10)     a-z(26) +특수기호  +(양/음수)부호
 1 01 001             A-Z(26)
   10 010             0-9(10)
   11 011                 62
      100
      101
      110
      111
 
 */


print("Int >>>>>>>>>>>>")
var a :Int
//var b 초기화 시키지 않거나 자료형을 명시하지 않으면 변수의 자료형을 알수 없어 선언시 에러
//print ("a : \(a)") 초기화 시키지 않은 변수 호출 불가
a = 100
//a = 123.456 type이 맞지 않아서 대입불가
//a = true
//a = "123"
print("a : \(a)")

var i8:Int8
i8 = 100
i8 = 127
//i8 = 128
var i16:Int16
i16 = 100
i16 = 127
i16 = 128
i16 = 32767
//i16 = 32768

print("Float, Double >>>>>>>>>>>>")//소수점
var ff:Float //32비트
ff = 123.456
ff = 123
print("ff: \(ff)")
var dd:Double //64비트
dd = 123.456
dd = 123
print("dd: \(dd)")

print("Bool >>>>>>>>>>>>")// true 및 false
var bb:Bool
bb = true
bb = false
//bb = 123
//bb = "true"
print("bb: \(bb)")

print("Character, String >>>>>>>>>>>>") //글자만 입력
var cc:Character
cc = "a"
//cc = 'a'
cc = "가"
//cc = "abc"
print("cc: \(cc)")
var ss:String
ss = "a"
//cc = 'a'
ss = "가"
ss = "abc"
print("ss : \(ss)")

print("Int <-> Double(Float)") //숫자에서 소수점으로 변경
var ii:Int = 123
var dd2:Double
//dd2 = ii
dd2 = Double(ii)
print("\(ii), \(dd2)")
dd2 = 123.456
ii = Int(dd2)
print("\(ii), \(dd2)")

print("Bool <-> 숫자") //검색
var bb2:Bool
var ii2:Int = 1
//bb2 = Bool(ii2) Bool() 변수 사용 불가, 상수, 리터럴 사용가능
bb2 = Bool(1)
bb2 = Bool(123)
print("\(bb2), \(ii2)")
bb2 = Bool(123)
print("\(bb2), 123")
bb2 = Bool(-123)
print("\(bb2), -123")
bb2 = Bool(0)
print("\(bb2), 0")
bb2 = Bool("true")!
print("\(bb2), \"true\"")
bb2 = Bool("false")!
print("\(bb2), \"false\"")
print("숫자 <-> 문자")
var ii3:Int = Int("123")!
print("\(ii3), \"123\"")
var dd3:Double = Double("123.456")!
print("\(dd3), \"123.4556\"")

print("fdfdfdf")
var tt:Bool
tt = Bool(8)
print(tt)
