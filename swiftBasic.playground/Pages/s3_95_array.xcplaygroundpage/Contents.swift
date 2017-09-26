//about array:

import Foundation
import UIKit

var fruits = [1,3,5,6,7,3,6,7,8];
var fruits2 :[Int] = [53,6,7,8];
    
fruits[1...3];
var count = fruits.count-2
fruits[1...count]

var allKinds :[Any] = [1,"d","c",count]
type(of:fruits);
//---

fruits + fruits2
fruits += fruits2

fruits2.append(123);
fruits2 += [3];
fruits2.insert(40,at:2);

//--
let product = fruits2.remove(at:1)
product
fruits2[0] = 0
fruits2[1...3]=[1,1,1]
fruits2;
fruits2.removeLast();


var fruit5 = Array(repeating: 2.5, count: 3);
fruit5;
if (!fruit5.isEmpty)
{print("not empty");}

for (index,value) in fruits2.enumerated() //enumerate(fruits2)
{
    //print("fruit2: \(index): \(value)");
    print("fruits2 ",index,value,  separator: ", ");
}

var fruits3 = [Int](); // type : Int[]


//--104
// copy array is just copy the value ; not reference the same original object
var f1 = ["a","b","c"];
var f2 = f1 ;
f1.remove(at:2);
f2.append("d"); // f1 != f2
f1;
f2;
//f1.append(["a","b"]); // error
f2.append(contentsOf: ["hi","ciao"])

//https://developer.apple.com/documentation/swift/array
//if it is instances of class , copy the reference ;  change will be the same

class arrayRef{
    var value = 10;
}
var firstRef = [arrayRef(),arrayRef()]
var secondRef = firstRef;
firstRef[0].value = 100;
print(secondRef[0].value); //100 // the same

firstRef[0] = arrayRef();
print( firstRef[0].value , secondRef[0].value  , separator: ", ")


//Bridging Between Array and NSArray
let colors = ["periwinkle", "rose", "moss"]
let url = NSURL(fileURLWithPath: "names.plist")

(colors as NSArray).write(to:url, atomically: true);


var labelA = UILabel(frame: CGRect(x:0,y:0,width:300,height:500));
labelA.text = "hello gina"
labelA.backgroundColor = UIColor.yellow
var labelB = labelA
labelB.backgroundColor = UIColor.red;
labelA.backgroundColor //red //ref the same object 
//labelB


