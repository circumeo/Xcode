import Cocoa

// 도전 과제
// 1. 강의 이름, 강사 이름, 학생수를 가지는 Struct 만들기 (Lecture)
// 2. 강의 어레이어와 강사이름을 받아서, 해당 강사의 강의 이름을 출력하는 함수 만들기
// 3. 강의 3개 만들고 강사이름으로 강의 찾기

// CustomStringConvertible : 서비스에 대해 설명할 때 주로 사용함

// 1
struct Lecture: CustomStringConvertible {
    var description: String {
        return "강의이름은 \(name) 이고, 선생님은 \(instructor) 입니다."
    }
    
    let name: String //강의 이름
    let instructor: String //강사
    let numOfStudent: Int // 학생 수
}

// 2
func printLectureName(from instructor: String, lectures: [Lecture]) {
    var lectureName = ""

    for lecture in lectures {
        if instructor == lecture.instructor { // "instructor"가 lecture의 instructor 상수와 같을때
            lectureName = lecture.name //"lectureName"에 "lecture"의 name 상수를 가져온다
        }
    }
    
//    let lectureName = lectures.first { $0.instructor == instructor
//    }?.name ?? ""
    print("아 그강사님 강의는요: \(lectureName)")
}

// 3
let lec1 = Lecture(name: "iOS Basic", instructor: "Jason", numOfStudent: 5)
let lec2 = Lecture(name: "iOS Advanced", instructor: "Jack", numOfStudent: 5)
let lec3 = Lecture(name: "iOS Pro", instructor: "Jim", numOfStudent: 5)
let lectures = [lec1, lec2, lec3]

printLectureName(from: "Jack", lectures: lectures)

print(lec1)
