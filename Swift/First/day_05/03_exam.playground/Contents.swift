import Cocoa

let name = "정우성"
let kor = 87, eng = 88, mat = 81
let tot = kor + eng + mat
let avg:Double = Double(tot) / 3

print("이름:\(name)")
print("국어:\(kor)")
print("영어:\(eng)")
print("수학:\(mat)")
print("총점:\(tot)")
print("평균:\(avg)")

/*
 Switch를 이용하여 수우미양가를 출력하세요
 모든 과목이 90점 이상이라면 우등생을 추가 출력하세요
 */

var grade:String
switch avg {
case 90...100 where kor >= 90 && eng >= 90 && mat >= 90:
    grade = "수"
case 80..<90:
    grade = "수"
case 70..<80:
    grade = "수"
case 60..<70:
    grade = "수"
default:
    grade = "가"
}
