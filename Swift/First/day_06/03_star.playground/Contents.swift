import Cocoa

/*
   1번
   *
   **
   ***
   ****
 */

for line in 0..<5{
    for star in 0...line{
        print("*" , terminator:"")
    }
    print(line)
}
