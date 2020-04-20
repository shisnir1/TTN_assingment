//
//  SelfSizingTableViewVC.swift
//  5. Compilation
//
//  Created by Shishir Singh  on 15/03/20.
//  Copyright © 2020 Shishir Singh . All rights reserved.
//

import UIKit

class SelfSizingTableViewVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    let tableArray = ["hello this is the first cell", "Hello this is the second cell and i have a few more information in it", "Hello this is third cell and its information is blah- blah- blah blah- blah- blah blah- blah- blah blah- blah- blah blah- blah- blah blah- blah- blah blah- blah- blah blah- blah- blah blah- blah- blah"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let nib = UINib(nibName: "SelfSizingTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "SelfSizingTableViewCell")
        
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 30
        
        
    }
    



}


extension SelfSizingTableViewVC : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  =  tableView.dequeueReusableCell(withIdentifier: "SelfSizingTableViewCell", for: indexPath) as! SelfSizingTableViewCell
        cell.label.text = tableArray[indexPath.row]
        return cell
        
    }
    
    
    
    
    
}
