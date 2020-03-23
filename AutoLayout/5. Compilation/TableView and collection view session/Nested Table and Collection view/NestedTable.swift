//
//  NestedTable.swift
//  5. Compilation
//
//  Created by Mohit Pareek  on 06/03/20.
//  Copyright © 2020 Mohit Pareek . All rights reserved.
//

import UIKit

class NestedTable: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
  
    let sectionArray = ["Action", "drama", "Science Fiction", "Kids", "Horror"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let nib = UINib(nibName: "NestedTableViewCell", bundle: nil)
        
        tableView.register(nib, forCellReuseIdentifier: "nestedTableViewCell")
        
    }
    
}


// MARK: Table view datasource and delegate
extension NestedTable : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "nestedTableViewCell", for: indexPath) as! NestedTableViewCell
        return cell
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionArray.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionArray[section]
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200.0
    }
    
}
