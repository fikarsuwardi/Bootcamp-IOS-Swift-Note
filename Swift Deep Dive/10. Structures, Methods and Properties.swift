//10. Structures, Methods and Properties
struct Town {
  let name = "Sisiland"
  var citizen = ["Sisi", "Fikar"]
  var resources = ["Ore": 100, "Wood": 50, "Iron": 30]
  
  func married() {
    print("Lets married")
  }
}

var myTown = Town()
print(myTown.citizen) // ["Sisi", "Fikar"]
print(Town().citizen) // ["Sisi", "Fikar"] -> just same
print(myTown) // Town(name: "Sisiland", citizen: ["Sisi", "Fikar"], resources: ["Ore": 100, "Wood": 50, "Iron": 30])
print(myTown.resources.keys) // ["Ore", "Wood", "Iron"]
print(myTown.resources.values) // [100, 30, 50]

myTown.citizen.append("Halida")
print(myTown.citizen) // ["Sisi", "Fikar", "Halida"]
myTown.resources["Glass"] = 10
print(myTown.resources) // ["Glass": 10, "Ore": 100, "Iron": 30, "Wood": 50]

myTown.married() // Lets married

struct City {
  let name: String
  var citizen: [String]
  var resources: [String: Int]
  
  // cara 1
//  init(townName: String, people: [String], stats: [String: Int]) {
//    name = townName
//    citizen = people
//    resources = stats
//  }
  
  // cara 2, lebih recomended
  init(name: String, citizen: [String], resources: [String: Int]) {
    self.name = name
    self.citizen = citizen
    self.resources = resources
  }
  
  
  func build() {
    print("lets build")
  }
}

//var halidaCity = City(townName: "Halidaland", people: ["Halida", "Fikar"], stats: ["PC": 50, "Mouse": 50])
//print(halidaCity) // City(name: "Halidaland", citizen: ["Halida", "Fikar"], resources: ["PC": 50, "Mouse": 50])
//halidaCity.citizen.append("Amma")
//print(halidaCity.citizen) // ["Halida", "Fikar", "Amma"]
//halidaCity.build() // lets build

var ammaCity = City(name: "Ammaland", citizen: ["Amma", "Fikar"], resources: ["Roti": 50, "Selai": 10])
print(ammaCity) // City(name: "Ammaland", citizen: ["Amma", "Fikar"], resources: ["Roti": 50, "Selai": 10])
