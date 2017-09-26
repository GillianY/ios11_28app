//: [Previous](@previous)

import Foundation

//https://developer.apple.com/documentation/swift/dictionary
//basic
var giftrecords = ["user1": 3, "user2":10 ,"user3":12, "user4": 7]

for (key, value) in giftrecords{
    print("\(key) : \(value)");
}
giftrecords["newuser"] = 20
print (giftrecords.count);

let oldvalue = giftrecords.updateValue(30, forKey: "newuser") //old value will be return
print(oldvalue); //20

let oldremove = giftrecords.removeValue(forKey: "user4")
giftrecords

//
var interestingNumbers = ["primes": [2, 3, 5, 7, 11, 13, 15],
                          "triangular": [1, 3, 6, 10, 15, 21, 28],
                          "hexagonal": [1, 6, 15, 28, 45, 66, 91]]
for key in interestingNumbers.keys {
    interestingNumbers[key]?.sort(by: >)
}

print(interestingNumbers["primes"]!) //[15, 13, 11, 7, 5, 3, 2]





//index -> (key,value) pair // can > < ==
let imagePaths = ["star": "/fb/star.png",
                  "portrait": "/images/content/portrait.jpg",
                  "spacer": "/images/shared/spacer.gif"]

let ginaIndex = imagePaths.index{ $0.value.hasPrefix("/fb") };

if let index = ginaIndex {
    print("the \(imagePaths[index].key) image is from fb")
} else {
    print("no image from fb");
}
