import Cocoa

var str = "Hello, playground"
print("hello world")
print(5+3)

//5+3 = 8 주석 : 프로그램 실행에 영향을 미치지 않는 구간 - 주로 설명이나 중요한 내용을 기재
/*. ==> 구간 시작
    주석 구간 - 구간 안에 모든 텍스트는 주석으로 처리
 
 
 ==> 구간 끝 */

// x : 변수
// = : 대입연산자
// 5+3 : 값
//변수 선언 및 초기화
var x = 5 + 3

print(x) // 변수호출


//var x = 9 변수이름 중복 불가
//var 123x = 10 숫자로 시작 불가
var x123 = 10
print(x123)

//var + = 11 특수기호 사용 불가
var ___ = 12 // _ 사용 가능
print(___)

//var a b = 13 띄어쓰기 불가

//var asdf =14
//var qwer= 15
var qwer=15
var asdf = 16 //좌우간격 맞추지 않을시 사용 불가
var 국어점수 = 78
print(국어점수)
//var var = 19 예약어 사용 불가
var tt:Int
//print(tt) 값이 없는 변수는 사용 불가

var hh = 3 , ii = 4 //동시에 여러 변수 선언 가능
print(hh)
print(ii)

var kk = 7, qq = kk //변수 선언시 다른 변수의 값 호출 사용 가능
print(kk)
print(qq)

var kkk = 88, eee = 99, mmm = 71
var ttt = kkk + eee + mmm
print(ttt)




