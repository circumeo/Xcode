import Cocoa

//문제: 가장 가까운 편의점 찾기

// 맨처음 시작시.... 코드

struct Location {
    let x: Int
    let y: Int
}

struct Store {
    let loc: Location
    let name: String
    let deliveryRange = 2.0
    
    func isDeliverable(userLoc: Location) -> Bool {
        let distanceToStore = distance(current: userLoc, target: loc)
        return distanceToStore < deliveryRange
    }
}

// 현재 스토어 위치들
let store1 = Store(loc: Location(x: 3, y:5), name: "gs")
let store2 = Store(loc: Location(x: 4, y:6), name: "seven")
let store3 = Store(loc: Location(x: 1, y:7), name: "cu")

// 거리 구하는 함수
func distance(current: Location, target: Location) -> Double {
    // 피타고라스..
    let distanceX = Double(target.x - current.x)
    let distanceY = Double(target.y - current.y)
    let distance = sqrt(distanceX * distanceX + distanceY * distanceY)
    return distance
}

// 가장 가까운 스토어 구해서 프린트하는 함수
func printClosesStore(currentLocation: Location, stores:[Store]) {
    var closestStoreName = ""
    var closestStoreDistance = Double.infinity
    var isDeliverable = false
    
    for store in stores {
        let distanceToStore = distance(current: currentLocation, target: store.loc)
        closestStoreDistance = min(distanceToStore, closestStoreDistance)
        if closestStoreDistance == distanceToStore {
            closestStoreName = store.name
            isDeliverable = store.isDeliverable(userLoc: currentLocation)
        }
    }
    print("Closest store: \(closestStoreName), isDeliverable: \(isDeliverable)")
}

// Stores Array 세팅, 현재 내 위칭 세팅
let myLocation = Location(x: 2, y:5)
let stores = [store1, store2, store3]

//printcloseststore 함수 이용해서 가장 가까운 스토어 출력하기
printClosesStore(currentLocation: myLocation, stores: stores)


//Improve Code
// - make Location struct
// - make Store struct
