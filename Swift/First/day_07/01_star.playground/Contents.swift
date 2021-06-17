import Cocoa
print("1번.............")
for line in 0..<5{
    
    for star in 0...line{
        print("*", terminator:"")
    }
    
    print()
}


print("2번.............")
for line in 0..<5{
    
    for star in line..<5{
        print("*", terminator:"")
    }
    
    print()
}


print("3번.............")
for line in 0..<5{
    
    for star in line+1..<5{
        print(" ", terminator:"")
    }
    
    for star in 0...line{
        print("*", terminator:"")
    }
    
    print()
}


/*
 
&&&&*
&&&**
&&***
&****
*****
 
 
 
 */
