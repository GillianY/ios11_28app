//: [Previous](@previous)

import Foundation

//https://developer.apple.com/documentation/swift/array
/*----.map----*/
//Returns an array containing the results of mapping the given closure over the sequence’s elements.
let username = ["Gina", "Mike","Natalie","Johnny","Angelina"]
let lowercaseNames = username.map{ $0.lowercased()}
//print(lowercaseNames); //["gina", "mike", "natalie", "johnny", "angelina"]

let lettercount = username.map{ $0.count };
//print(lettercount); [4, 4, 7, 6, 8]



/*----.reduce ----*/


//func reduce<Result>(_ initialResult: Result, _ nextPartialResult: (Result, Element) throws -> Result) rethrows -> Result

let giftrecords = ["user1": 3, "user2":10 ,"user3":12, "user4": 7]

let results = (giftrecords.values).reduce(0,{(x,y) in x+y }); //32
//let namelist = giftrecords.keys; //error



//func reduce<Result>(into initialResult: Result, _ updateAccumulatingResult: (inout Result, Element) throws -> ()) rethrows -> Result
let letters = "arbulakadabura"
let letterCount = letters.reduce(into: [:]){ counts, letter in counts[letter, default: 0] += 1}
//print(letterCount); //["b": 2, "a": 5, "r": 2, "u": 2, "l": 1, "k": 1, "d": 1]

let userlist = username.reduce("the users are:" , {x,y in (x + "," + y) } )
//print(userlist); //the users are:,Gina,Mike,Natalie,Johnny,Angelina

let usercount = username.count - 1
let userlist2 = username[1...usercount].reduce("the users are : \(username[0])" , {x,y in (x + " , " + y) } )
//print(userlist2); //the users are : Gina , Mike , Natalie , Johnny , Angelina



/* -- sort -- */
var arrayA = [7,10,23,55,2,3,54,6,3]
arrayA.sort(); //default : increasing <
arrayA.sort(by: >); //2,3,6,7,.....


//mutating func sort(by areInIncreasingOrder: (Element, Element) throws -> Bool) rethrows
//areInIncreasingOrder
//A predicate that returns true if its first argument should be ordered before its second argument; otherwise, false. //true <; false >


enum HTTPResponse {
    case ok
    case error(Int)
}

var responses : [HTTPResponse] = [ .error(500), .ok , .ok , .error(404), .error(403)]
   
 responses.sort{
        switch ($0, $1){
            case let( .error(acode) , .error(bcode)):
                return acode < bcode
            case ( .ok , .ok): return false ;
            case ( .error , .ok): return true;
            case ( .ok , .error): return false;
            }
    }

print(responses);


//foreach :
responses.forEach { item in print(item); }



//fruits2.reduce();

