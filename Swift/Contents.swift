//: Playground - noun: a place where people can play

import UIKit

//optional = structura (enum <Wrapped>) care se ocupa cu absenta valorii - nil
//nil = absenta valorii(Swift) vs nil = null pointer (Objective c)
var name:String? // nil

//optional unwrapping ! = conversia de la optional value la normal value (daca e optionalul e nil aplicatia nu compileaza

//Unwrap explicit

//unresolved identifier
if name != nil{
    var newName = name
}
//vs
if let newName = name {
    print(newName)
}

//Unwrap impicit (force)
//var fullname = "alex" + name!

//gave optional default
let new_name = name ?? "dej"
print(new_name)

///Functions definition
func Summ (a:Int,b:Int)->Int{
    let s = a+b
    return s
}

//print(Summ(a:5,b:56))

////OOP shit - clasele in Swift nu mostenesc o clasa universala
/// NSObject este clasa universala in Objective C

class Animal {
    
    //proprietati - daca o prop e const sau optional trebuie initializata pe loc sau in constructor
    var age:Int = 0
    
    init(){
        print ("animal constructor")
    }
}

//Inheritance
//class <name>: <super class> {
//    methods and properties
//}

//Override - modificarea unei metode mostenita din clasa parinte
class Caine:Animal{
    //suprascriere constructor
    override init(){
      //  super.init() daca vreau sa apelez intai constructorul din clasa de baza
        print("caine constructor")

    }
}

//Overload - modificarea nr sau tipului de parametrii din semnatura functiei
//Constructorii poti fi supraincarcati

class Monkey:Animal {
    convenience init(nume:String){
        self.init()
        //'nil' is the only return value permitted in an initializer
        print("nume")
    }
}
let m = Monkey(nume:"alex")


////////Metodele supraîncărcate OVERLOAD pot fi suprascrise OVERRIDE dacă acestea nu au
//fost declarate “final”


//DECIZIE:IF ELSE, SWITCH CASE
//control: for while


class A {
    init(){
        print("AAAA")
    }
}

class B:A{
}

let b = B()
