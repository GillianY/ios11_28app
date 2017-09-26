//: [Previous](@previous)

import Foundation

var a = 10;
var b :String = "10";
var c = 10;

//a == b //can't campare
//a === b //no ===

a == c
var d :String = "10";
b == d //true


//b === d
//expected an argument list of type '(AnyObject?, AnyObject?)'


class A {}
var e = A();
var f = A();
var g = f;

//e == f // error 沒有這個定義 // 要實作 Equatable
e === f //false
g === f //true

class B:  Equatable{
    let myname :String ;
    init(name :String){myname = name; }
    
    static func ==(aclass: B, bclass: B) -> Bool{
    return aclass.myname == bclass.myname;
    }
}

var h = B(name:"h");
var i = B(name:"h");
h == i ; //true


//infix operator <==> { precedence 130 }
//func <==> (lhs: CGPoint, rhs: CGPoint) -> Bool {
//    return lhs.x == rhs.x && lhs.y == rhs.y
//}
//
//let point1 = CGPoint(x: 1.0, y: 1.0)
//let point2 = CGPoint(x: 1.0, y: 1.0)
//point1 <==> point2 // true

b.append("12");
b.concat("asd");
