//
//  main.swift
//  2HW2
//
//  Created by Indira on 26/12/22.
//

import Foundation

print("Hello, World!")

class Store {
    var name: String
    var square: Int
    var location: String
    var hours: Int
    var thing: [Products] = [Products] ()
    
    init(name: String, square: Int, location: String, hours: Int) {
        self.name = name
        self.square = square
        self.location = location
        self.hours = hours
    }
    func showInfo () {
        print("name \(name), square \(square), location \(location), hours \(hours)")
        for i in thing {
            print("\(i.identity), \(i.quantity), \(i.price)")
        }
    }
    func add(device: Products) {
        thing.append(device)
    }
}

class Products: Store {
    var identity: String
    var quantity: Int
    var price: Int
    
    init(name: String, square: Int, location: String, hours: Int, identity: String, quantity: Int, price: Int) {
        self.identity = identity
        self.quantity = quantity
        self.price = price
        super.init(name: name, square: square, location: location, hours: hours)
    }
    override func showInfo() {
        print("name \(name), square \(square), location \(location), hours \(hours), identity \(identity), quantity \(quantity), price \(price)")
    }
}

class Autodevices: Store {
    var partofcar: String
    var model: String
    
    init(name: String, square: Int, location: String, hours: Int, partofcar: String, model: String) {
        self.partofcar = partofcar
        self.model = model
        super.init(name: name, square: square, location: location, hours: hours)
    }
    override func showInfo() {
        print("name \(name), square \(square), location \(location), hours \(hours), partofcar \(partofcar), model \(model)")
    }
}

var wheelsmarket = Store(name: "wheelsmarket", square: 70, location: "Bishkek", hours: 12)
wheelsmarket.add(device: oil)
wheelsmarket.showInfo()
var oil = Products(name: "Around home", square: 60, location: "Bishkek", hours: 16, identity: "oil", quantity: 15, price: 2000)
oil.showInfo()
var engine = Autodevices(name: "Motor", square: 100, location: "Bishkek", hours: 24, partofcar: "engine", model: "xxxloy")
engine.showInfo()
