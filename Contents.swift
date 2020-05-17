import UIKit

class Animal {
    var name: String
    var health:Int = 100
    init(name: String) {
        self.name = name
    }
    func displayHealth() {
        print("\(name)'s health is \(health)")
    }
}

//let animal1 = Animal(name: "tiger")
//animal1.displayHealth()

class Cat: Animal {
    
    func growl() {
        print("Rawr!")
    }
    
    func run() {
        print("\(name)'s Running")
        health -= 10
    }
    
}

let theCat = Cat(name: "Cat")
theCat.health = 150 // modify subclass cat's health
//theCat.displayHealth()
//theCat.run()
//theCat.displayHealth()

class Lion: Cat {
   
    override func growl() {
        print("ROAR!!!!! I am the King of the Jungle")
    }
}

class Cheetah: Cat {
    override func run() {
        if health <= 0 {
            health = 0
            print("Can't run anymore")
            
        }else {
            print("Running Fast")
            health -= 50
        }
    }
    
    func sleep() {
        health += 50
        if health >= 200 {
            health = 200
            print("Can't recover anymore health")
        }
    }
}

let Lion1 = Lion(name: "LeLion")
let Cheetah1 = Cheetah(name: "FastCheetah")

Lion1.health = 200
Cheetah1.health = theCat.health

Cheetah1.run()
Cheetah1.run()
Cheetah1.run()
Cheetah1.run()
Cheetah1.displayHealth()

Lion1.run()
Lion1.run()
Lion1.run()
Lion1.growl()

