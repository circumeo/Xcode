import Cocoa

print("나폴레옹은 '여기가 아닌디' 라고 생각했다.")
print("나폴레옹은 \"불이야\" 라고 외쳤다") //"불이야를" 변수로 이해
print("아기상어\t뚜루루 뚜루\n바다속\t뚜루루 뚜루\n아기상어")

print("여기 참나무숲", terminator:"==>")
print("장수 풍뎅이와", terminator:"\n")
print("사슴 벌레가 살지", terminator:"***")


var a = 10, b = 20
print("a , b")
var t1 = "\(a) , \(b)" //문자열 보간법 : 변수의 값을 문자열에 포함
print(t1)

let c = 100 //상수 : 선언시에 초기값을 입력하며 이후 변경 불가
print("\(a) , \(b), \(c)")

a = 1111 //변수 대입 가능
b = 2222
// c = 3333 상수 대입 불가
print("\(a) , \(b), \(c)")
