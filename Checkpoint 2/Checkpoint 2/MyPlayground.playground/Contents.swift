import Cocoa

var greeting = "Hello, playground"

var hello = ["Idk", "Idk2", "HMMM", "yeah", "hmm", "Idk"];

print(hello.count);

let helloSet = Set(hello);

print(helloSet.count);


if (hello[1] == "Idk"){
    print("yayyyy");
    
}else if (hello[1] == "Idk2"){
    print("yayyyy2");
    
}else{
    print("Noooo")
}

let score = 28;

if score > 202{
    print("nooo")
}else{
    print("hmm")
}

if true{
    print("hiii")
}

let ourName = "Coleton";
let hisName = "Dave";

if ourName < hisName{
    print("\(ourName) wins")
}

if ourName == "Coleton"{
    print("weird");
}

if score == 12{
    print("noo")
}else if score == 10{
    print("hmmm")
}

let tempature = 25

if tempature > 20 && tempature < 30 {
    print("AHHHH");
}

if tempature > 20 || tempature < 10 {
    print("FEAR");
}


print ("You can buy the game!")

enum TransportOption {case airplane, helicopter, bicycle, car, escooter}

let transport = TransportOption.airplane

if transport == .airplane || transport == .helicopter {
    print ("Let's fly!")
} else if transport == .bicycle{
    print("help")
} else{
    print("WHAT???")
}
