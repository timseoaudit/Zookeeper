//
//  ContentView.swift
//  Zookeeper
//
//  Created by user on 09/10/2023.
//

import SwiftUI

struct ContentView: View {
    
    let animalGroups = [
        AnimalGroup(groupName: "Pets", animals: [
            Animal(name: "Dog"),
            Animal(name: "Cat"),
            Animal(name: "Parrot"),
            Animal(name: "Mouse")
        ]),
        AnimalGroup(groupName: "Farm", animals: [
            Animal(name: "Cow"),
            Animal(name: "Horse"),
            Animal(name: "Goat"),
            Animal(name: "Sheep"),
        ]),
        AnimalGroup(groupName: "Critters", animals: [
            Animal(name: "Firefly"),
            Animal(name: "Spider"),
            Animal(name: "Ant"),
            Animal(name: "Squirrel"),
        ])
    ]
    
    var body: some View {
        List {
            ForEach(animalGroups) {
                animalGroup in Section(header: Text(animalGroup.groupName)) {
                    ForEach(animalGroup.animals) { animal in Text(animal.name)
                        
                    }
                }
            }
        }
    }
    
    
    
    struct Animal: Identifiable {
        var id = UUID()
        var name: String
    }
    
    struct AnimalGroup: Identifiable {
        var id = UUID()
        var groupName: String
        var animals: [Animal]
    }
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
