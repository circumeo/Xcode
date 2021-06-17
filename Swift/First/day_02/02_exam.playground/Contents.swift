import Cocoa

// 02_exam 파일을 생성하고
// 이름, 국어,영어,수학 변수를 만들고 값을 입력한 후
// 총점, 평균을 계산하여 출력하세요
// 평균을 이용하여 수우미양가를 출력하세요
// 수 >=90 , 우 >= 80 , 미 >= 70, 양 >=60 , 가

var name = "정우성"
var kor = 98, eng = 96, mat = 97
var total = kor + eng + mat
var avg:Double = Double(total) / 3
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


// 78.33333333333333 * 100
// 7833.333333333333 + 0.5 ==> 7833.83333333
// 7866.666666666666 + 0.5 ==> 7867.16666666
// Int(7833.333333333333)
// Double(7833)
// 7833.0 / 100
// 78.33

var pos:Double = 100

var avg2:Double = Double(Int(avg * pos + 0.5)) / pos
print("평균2:",avg2)
//78.33333 -> 78.33
//78.66666 -> 78.67

var grade2:String

if avg >= 90{
    grade2 = "수"
    if kor >= 90 && eng >= 90 && mat >= 90 {
        grade2 += "(우등생)"
    }
}else if avg >= 80{
    grade2 = "우"
}else if avg >= 70{
    grade2 = "미"
}else if avg >= 60{
    grade2 = "양"
}else{
    grade2 = "가"
}
print("등급2:",grade2)
