import Cocoa

var str = "Hello, Swift"
print(str)
// 왼쪽 숫자 영역 "Gutter"

let r = CGRect(x: 0, y: 10, width: 20, height: 30) //GGRect 구조체 위치 : x,y 좌표로 표시하며 width 와 height는 너비, 높이

var sum = 0
for i in 1...10 {
    sum += i // 1부터 10까지의 숫자를 모두 더한값을 구하는 코드이며 오른쪽의 10times는 10번을 반복하였다라는 의미
}
print(sum)

// Shift+Command+Return : 전체 코드 실행
// Shift+Return : 커서가 있는 줄까지 코드 실행
