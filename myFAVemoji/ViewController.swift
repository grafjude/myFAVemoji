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
    
    var emoji=["🎹 Piano","🌞 Sun","👾 Pixie","😈 Purple Devil","👻 Ghost","😄 Favortie Smile","♍️ Virgo sign"] 
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        cooltableView.dataSource=self
        //this is used to define the table
        cooltableView.delegate=self
        //and contents
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return emoji.count
           //this tells xcode to look for the number of rows as an integer
   
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        print(indexPath.row)
        
        let cell=UITableViewCell()
        cell.textLabel?.text=emoji[indexPath.row]
        return cell
        //this tells xcode what we want in the cells in order
    }
 
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "moveSegue", sender: "🎹")
    }
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
    }


}

