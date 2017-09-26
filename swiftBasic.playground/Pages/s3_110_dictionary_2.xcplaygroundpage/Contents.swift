//: [Previous](@previous)

import Foundation

let userData = ["name": "Gina", "age" : "22", "location": "Milan", "userID": "168" ];

//var array = userData.keys; //error //LazyMapCollection<Dictionary<String,String> ,String >

type(of:userData.keys);     //Dictionary<String, String>.Keys.Type

let userdata_keys = Array(userData.keys);
let userdata_values = Array(userData.values);
