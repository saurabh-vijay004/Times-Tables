//
//  ViewController.swift
//  Times Tables
//
//  Created by Saurabh on 5/19/18.
//  Copyright © 2018 Saurabh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var table: UITableView!
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        
        table.reloadData()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return 50
    }
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = String( Int(slider.value) * (indexPath.row + 1) )
        
        return cell
        
    }
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

