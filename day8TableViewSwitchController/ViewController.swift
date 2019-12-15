//
//  ViewController.swift
//  day8TableViewSwitchController
//
//  Created by Felix-ITS016 on 21/11/19.
//  Copyright © 2019 Felix. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {
    
    var colorArray = ["Red","Blue","Green","Pink","Yellow"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colorArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = colorArray[indexPath.row]
        let switch1 = UISwitch()
        cell.accessoryView = switch1
        switch1.addTarget(self, action: #selector(switchPressed(sender:)), for: .valueChanged)
        switch1.accessibilityLabel = cell.textLabel?.text
        
        return cell
    }
    @objc func switchPressed(sender:UISwitch)  {
        if sender.isOn
        {
            print("switch is on ")
            print("color selected = \(sender.accessibilityLabel!)")
        }
        else
        {
            print("switch is off")
    
        }
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

