//8. Dictionaries
var dictionary: [String: Int] = ["Sisi": 25, "Fikar": 26]

print(dictionary.count) // 2
print(dictionary.keys) // ["Fikar", "Sisi"]
print(dictionary.values) // [25, 26]
print(dictionary) // ["Fikar": 26, "Sisi": 25]
print(dictionary.isEmpty) // false

// Add new item
dictionary["Halida"] = 26
print(dictionary) // ["Sisi": 25, "Halida": 26, "Fikar": 26]

// Update item
dictionary["Sisi"] = 26
print(dictionary) // ["Fikar": 26, "Sisi": 26, "Halida": 26]
