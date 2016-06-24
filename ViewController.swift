//
//  ViewController.swift
//  BasicSwift
//
//  Created by ITROISMAC3 on 6/22/16.
//  Copyright © 2016 ITROISMAC3. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    @IBOutlet weak var tableView: UITableView!
    
    var data = ["Apple", "Apricot", "Banana", "Blueberry", "Cantaloupe", "Cherry",
        "Clementine", "Coconut", "Cranberry", "Fig", "Grape", "Grapefruit",
        "Kiwi fruit", "Lemon", "Lime", "Lychee", "Mandarine", "Mango",
        "Melon", "Nectarine", "Olive", "Orange", "Papaya", "Peach",
        "Pear", "Pineapple", "Raspberry", "Strawberry"]

    var highscore:Int = 0
    var playerName:String = "John"
    let skyColor = "Blue"
    let numberOfDays = 365

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
     tableView.delegate=self
     tableView.dataSource=self
    let myClass = person(natural: "Mr.Robotto")
    print("TEXT IS \(myClass.text)")
    myClass.helloWithName("Ravi", 22, "Hyderabad")
        
    let str = myClass .getOdometerReading()
    print(str)
        myClass .enterName(name: "Smith")
        let milo = Dog(name: "Milo", breed: "Chihuahua", age: 3)
     print(milo.name)
        
        let requestUrl:NSURL = NSURL(string: "")!
        
        let urlRequest:NSMutableURLRequest = NSMutableURLRequest(URL: requestUrl)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        cell.textLabel!.text=data[indexPath.row]
        
        return cell;
    }

}
class  person {
    var text:String = ""
    init(natural: String) {
        print(natural)
        text = natural
    }
    
    struct Celsius {
        var temperatureInCelsius: Double
        init(fromFahrenheit fahrenheit: Double) {
            temperatureInCelsius = (fahrenheit - 32.0) / 1.8
        }
        init(fromKelvin kelvin: Double) {
            temperatureInCelsius = kelvin - 273.15
        }
        init(_ celsius: Double) {
            temperatureInCelsius = celsius
        }
    }


  internal  func getOdometerReading() -> Int {
        return 50000
    }
    
    func personName(name name:String){
    print(name)
    }
    func helloWithName(name: String, _ age: Int, _ location: String) {
        print("Hello \(name). I live in \(location) too. When is your \(age + 1)th birthday?")
    }
    
    func enterName(name name:String){
    print("yourName \(name)")
        
    }


    
}

struct Dog {
    var name: String
    var breed: String
    var age: Int
    
    init(name: String, breed: String, age: Int) {
        self.name = name
        self.breed = breed
        self.age = age
    }
}




