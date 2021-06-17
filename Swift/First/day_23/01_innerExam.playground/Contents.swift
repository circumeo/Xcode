import Cocoa

/*
 학생이름, 과목을 입력받아  구분, 이름,총점,평균 을 출력하세요
 구분
 과목 3개 : 일반
 과목 4개 : 특기
 */

func exam(_ name:String, _ jum:Int...)->(String, String, Int, Int){
    var kind:String?
    var tot = 0
    var avg = 0
    
    func general(){
        kind = "일반"
        calc()
    }
    
    func spec(){
        kind = "특기"
        calc()
    }
    
    func calc(){
        tot = 0
        
        for i in jum{
            tot += i
        }
        avg = tot / jum.count
    }
    if jum.count == 3{
        general()
    }else if jum.count == 4{
        spec()
    }
    
    return (kind!, name, tot, avg)
}
var rr = exam("정우성",77,78,72)
print(rr)
rr = exam("정좌성", 77, 78, 72, 76)
print(rr)
