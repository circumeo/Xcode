import Cocoa

//var someArray: Array<Int> = [1, 2, 3, 1]
var someSet: Set<Int> =  [1, 2, 3, 1, 2] // Array와의 차이점은 유니크 개체를 찾기 때문에 중복된 내용이 있다면 하나로 출력한다

someSet.isEmpty
someSet.count

someSet.contains(4)
someSet.contains(1)

someSet.insert(5)
someSet

someSet.remove(1)
someSet
