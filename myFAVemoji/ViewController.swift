//
//  ViewController.swift
//  myFAVemoji
//
//  Created by BHSRam8 on 9/30/16.
//  Copyright © 2016 Jude Graf. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var cooltableView: UITableView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        cooltableView.dataSource=self
        //this is used to define the table
        cooltableView.delegate=self
        //and contents
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 100
           //this tells xcode to look for the number of rows as an integer
   
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell=UITableViewCell()
        cell.textLabel?.text="😈"
        return cell
        //this tells xcode what we want in the cells in order
    }
 
    
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
    }


}

