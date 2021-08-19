import Cocoa


var scoreDic: [String: Int] = ["Jason": 80, "Jay": 95, "Jake": 90]
//var scoreDic: Dictionary<String, Int> = ["Jason":80, "Jay": 95, "Jake": 90]
// 둘다 선언 가능

if let score = scoreDic["Jason"] {
    score
} else {
    //...score 없음
}
scoreDic["Jay"]
scoreDic["Jerry"]

//scoreDic = [:] 깡통생성
scoreDic.isEmpty
scoreDic.count // 3명의 학생수

//기존 사용자 업데이트
scoreDic["Jason"] = 99 // 내용 업데이트
scoreDic

//사용자 추가
scoreDic["Jack"] = 100
scoreDic

//사용자 제거
scoreDic["Jack"] = nil
scoreDic

for (name, score) in scoreDic {
    print("\(name), \(score)")
}

for key in scoreDic.keys {
    print(key)
}

//dictionary는 실행시에 매번 나열 순서가 달라진다.

//도전과제
// 1. 이름, 직업, 도시에 대해서 본인의 딕셔너리 만들기
// 2. 여기서 도시를 부산으로 업데이트 하기
// 3. 딕셔너리를 받아서 이름과 도시 프린트 하는 함수 만들기

// 1
var myDic: [String: String] = ["name": "Jinsol", "job": "iOS Engineer", "city": "Gimpo"]

// 2
myDic["city"] = "Jeju"
myDic

// 3
func printNameAndCity(dic: [String: String]) {
    if let name = dic["name"], let city = dic["city"] {
        print(name, city)
    } else {
        print("--> Cannot find")
    }
}

printNameAndCity(dic: myDic)
