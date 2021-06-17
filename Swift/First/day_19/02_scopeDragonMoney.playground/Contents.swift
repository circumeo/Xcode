import Cocoa

var mom = 100
var child = ["아들":0, "딸":0, "아빠":0]
func showMeTheMoney(_ name:String, _ money:Int){
    if name == "아빠"{
        print("이사람이!!!")
        return;
    }
    child[name]! += money
    mom -= money // mom의 돈은 money에서 계속 마이너스
    print("\(name) : \(money)( \(child[name]!) )")
    print("\t잔액 : \(mom)") // 잔액
}

func missionComplete(_ name:String, _ money:Int){
    if name != "아빠"{
        print("건강하게만 자라다오")
        return;
    }
    child[name]! += money
    mom += money
    print("\(name) : \(money)( \(child[name]!) )")
    print("\t잔액 : \(mom)") // 잔액
}

showMeTheMoney("아들", 13)
showMeTheMoney("아빠", 30)
showMeTheMoney("딸", 15)
missionComplete("아빠", 50)
showMeTheMoney("딸", 8)
missionComplete("아들", 50)
showMeTheMoney("아들", 11)

/*
 아빠가 용돈을 요구할 경우 : "이사람이!!!" 출력하고 용돈을 못가져가게 하세요
 아들, 딸이 돈을 벌어올 경우 : "건강하게만 자라다오" 출력하고 돈을 못 벌어오게 하세요
 */
