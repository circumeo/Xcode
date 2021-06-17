import Cocoa

print(" 2.1 산술연산자 ============")

var a = 15, b = 7

print(a + b)
print(a - b)
print(a * b)
print(a / b)
print(a % b)

var a2 = "정우성", b2 = "원빈"
print(a2 + b2) //문자열은 문자열 결합
//print(a2 - b2)
//print(a2 * b2)
//print(a2 / b2)
//print(a2 % b2)

print (3+4*5)
print ((3+4)*5)
print ("2.2 비교연산자 ===========")

a = 20
b = 10

print(a, ">" ,b,":", a > b+20)
print(a, ">=",b,":", a >= b)
print(a, "<=",b,":", a <= b)
print(a, "<",b,":", a < b)
print(a, "==",b,":", a == b)
print(a, "!=",b,":", a != b)

/*
비교연산자보다 상수연산자가 우선순위를 가지고 있다.
true, false로 표시되는것을 블린이나 블이라고 한다.
print(a + a2)
print(a - a2)
print(a * a2)
print(a / a2)
print(a % a2)

= 등호는 하나일 경우 대입이며, 값이 같다라는 등호는 ==
부등호와 등호일 경우 부등호가 우선순서
*/

a2 = "정우성"
b2 = "원빈"

print(a2, ">" ,b2,":", a2 > b2)
print(a2, ">=",b2,":", a2 >= b2)
print(a2, "<=",b2,":", a2 <= b2)
print(a2, "<",b2,":", a2 < b2)
print(a2, "==",b2,":", a2 == b2)
print(a2, "!=",b2,":", a2 != b2)
// 문자열을 비교 하였을때 a가 작고 z가큼


print ("2.3 논리연산자 ===========")
var bo1 = false, bo2 = false

print("!",bo1,"1", !bo1)
print(bo1, "&&",bo2,":", bo1 && bo2)
print(bo1, "||",bo2,":", bo1 || bo2) /* (||) 맥에서 파이프라 명칭. */

var dist = 2
var mask = "캐릭터"

//var distChk = dist >= 2
//var maskChk = mask == "캐릭터"

//print("And", distChk && maskChk)
//print("Or", distChk || maskChk)

print("And", dist >= 2 && mask == "방역")
print("Or", dist >= 2 || mask == "방역")

print ("2.4 할당연산자 ===========")
a = 7
print("a:",a)
// 우항의 값을 계산하여 좌항으로 대입
//a = a + 3
a += 3
print("a += 3 :",a)
a -= 2
print("a -= 3 :",a)
a *= 4
print("a *= 3 :",a)
a /= 2
print("a /= 3 :",a)
a %= 3
print("a %= 3 :",a)

print ("3. 삼항조건연산자 ===========")
// Question ? A:B Question의 값이 참이면 A를, 거짓이면 B를 반환

//print(false ? "참이지롱" : "거짓부렁")

var jum = 58
var res1 = jum >= 80 ? "합격" : "불합격"
var res2 = jum >= 80 ? "우수" : jum >= 60 ? "정상" : "미달"


print(jum,":", res1 , "," , res2)
