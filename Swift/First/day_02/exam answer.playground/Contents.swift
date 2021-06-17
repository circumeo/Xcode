import Cocoa

// 02_exam 파일을 생성하고
// 이름, 국어,영어,수학 변수를 만들고 값을 입력한 후
// 총점, 평균을 계산하여 출력하세요
// 평균을 이용하여 수우미양가를 출력하세요
// 수 >=90 , 우 >= 80 , 미 >= 70, 양 >=60 , 가

var name = "정우성"
var kor = 78, eng = 77, mat = 81
var total = kor + eng + mat
var avg = total / 3
var grade = avg >= 90 ? "수" :
            avg >= 80 ? "우" :
            avg >= 70 ? "미" :
            avg >= 60 ? "양" : "가"
    
print("이름:",name)
print("국어:",kor)
print("영어:",eng)
print("수학:",mat)
print("총점:",total)
print("평균:",avg)
print("등급:",grade)
