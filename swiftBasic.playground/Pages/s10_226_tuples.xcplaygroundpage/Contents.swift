//: [Previous](@previous)

import Foundation

//tuples are not data type;  looks like dictionary ; it's a compound value

let person2 = ("Lily" , 25, "F" ,"user32", true);
person2.0
person2.1
person2.2

let person1 = (name: "Lily" ,age: 25 ,male: "F" , userID: "u3245",  active: true);
person1.name;
person1.age;

func userDataTuple(array:[String]) -> (name: String , age: Int , active : Bool){
    return (array[0] , Int(array[1])! , (array[2] == "true"));
}


let user1 = userDataTuple(array: ["Natalie", "28", "true"]);
user1.0
user1.age
user1.active

let name = user1.name ;
//.....

let (nameA , ageA , activeA ) = user1;
nameA
ageA
activeA

let (nameB , _ , activeB) = user1;
nameB


//228
//the labels are not taken into consideration when comparing tuples228

let mealset1 = (breakfase : "Apple", lunch :"Banana");
let mealset2 = (first: "Apple" , second: "Banana");

if(mealset1 == mealset2 )
{
    print("the same");
    
}

//230
//tuples are copy by values;
//when assigning one tuple to another;  it will have differentcopy from  the old tuple ;
var tuple1 = (name: "Judy", age : 23 );
var tuple2 = tuple1;
tuple2.name = "Johnson"
tuple1.name // judy


//231
func orderAmount(id: Int , value : Int , count: Int ) -> (id: Int , total: Int)
{
    return (id , value*count);
}

let records = orderAmount(id:143 , value: 12 , count: 30);
records.1
records.total

