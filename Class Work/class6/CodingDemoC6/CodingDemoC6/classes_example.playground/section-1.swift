// Playground - noun: a place where people can play

class Animal {
    //don't forget to specify the type of the variable
    var species:String = ""
    var name:String = ""
    
    //in the function need to say that it's a string
    func stringRepresentation() -> String{
        //and then need to specify that it'll return something. needs to be return in project (as opposed to println in playground) because in a project, it'll just return that in the debugger area and not in the actual method
        return("The animal is a \(self.species), its name is \(self.name)")
    }
}

//can use the class as a type in the parameter of the function. so you can pass in custom types into functions
func printAnimalName(animal: Animal) {
    println("Animal's name is \(animal.name)")
}

var doggie = Animal()
doggie.name = "Ena"
printAnimalName(doggie)