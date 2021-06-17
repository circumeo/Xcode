import Cocoa

if false {
    print("참이지롱")
}
print("if 문 종료 >>>>")

if false {
    print("참이지롱2")
}else{
    print("거짓부렁2")
}
print("if ~ else문 종료 >>>>")

//else{  단독으로 사용불가
//    print("거짓부렁3")
//}

var jum = 58
if jum >= 80 {
    print("\(jum) : 합격")
}else{
    print("\(jum) : 불합격")
}
print("if ~ else문 종료2 >>>>")

if jum >= 80 {
    print("\(jum) : 우수")
}




if jum >= 60 {
    print("\(jum) : 정상")
}else{
    print("\(jum) : 미달")
}
print("if ~ else문 종료3 >>>>")

jum = 84
if jum >= 80 {
    print("\(jum) : 우수2")
}else if jum >= 40 {
    print("\(jum) : 미달2")
}else if jum >= 60 {
    print("\(jum) : 정상2")
}else{
    print("\(jum) : 탈락2")
}
print("if ~ else if ~ else문 종료 >>>>")
/*if jum >= 80 {
    print("\(jum) : 우수2")

}else{
    print("\(jum) : 미달2")
    
}else if jum >= 60 {
    print("\(jum) : 정상2")
}*/


jum = 68
if jum >= 80 {
    print("\(jum) : 우수3")
}else if jum >= 60 {
    print("\(jum) : 정상3")
    
    if jum % 2 == 0{ //중첩 if 문
        print("짝수")
    }else{
        print("홀수")
    }
    
}else if jum >= 40 {
    print("\(jum) : 미달3")
}else{
    print("\(jum) : 탈락3")
}
print("중첩 if문 종료 >>>>")
