//12. Immutability

struct Guild {
  let name: String
  var citizen: [String]
  var resources: [String: Int]
  
  init(name: String, citizen: [String], resources: [String: Int]) {
    self.name = name
    self.citizen = citizen
    self.resources = resources
  }
  
  mutating func harvestRice() {  // should add mutating
    self.resources["Rice"] = 250
  }
}

var sisiGuild = Guild(name: "Sisi Afrini", citizen: ["Fikar", "Sisi"], resources: ["Gold": 200, "Copper": 100])
print(sisiGuild.resources) // ["Gold": 200, "Copper": 100]

sisiGuild.harvestRice() // sisiGuild must use let not var
print(sisiGuild.resources) // ["Gold": 200, "Copper": 100, "Rice": 250]
