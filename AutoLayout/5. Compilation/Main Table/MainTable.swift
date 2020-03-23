//
//  MainTable.swift
//  5. Compilation
//
//  Created by Mohit Pareek  on 05/03/20.
//  Copyright © 2020 Mohit Pareek . All rights reserved.
//

import UIKit

class MainTable: UIViewController {

    // Outlets
    @IBOutlet weak var tableView: UITableView!
    
    //variables
    let arrayOfProjects = ["1. Table and Collection view", "2.user details tableview", "3. Auto Layout second session", "4. auto layout third session"]
    let storyBoardID = ["NestedTable", "DataVC", "DifferentStackViews" ,"SelfSizingTableViewVC"]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let nib = UINib(nibName: "MainTableCell", bundle: nil)
        
        tableView.register(nib, forCellReuseIdentifier: "MainCell")
        
        
        
    }
    


}

extension MainTable : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfProjects.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainCell", for: indexPath) as! MainTableCell
        cell.setLabelText(text: arrayOfProjects[indexPath.row])
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(identifier: "\(storyBoardID[indexPath.row])")
        self.navigationController?.pushViewController(vc, animated: true)
        
     }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
}
