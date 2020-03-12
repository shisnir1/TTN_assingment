//
//  ViewController.swift
//  NestedViewController
//
//  Created by Shishir SIngh on 12/03/20.
//  Copyright © 2020 Shishir SIngh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TableView: UITableView!
     let sectionArray = ["Action", "drama", "Science Fiction", "Kids", "Horror"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "TableViewCell", bundle: nil)
        
        TableView.register(nib, forCellReuseIdentifier: "tableCell")

        // Do any additional setup after loading the view.
    }


}
extension ViewController : UITableViewDataSource, UITableViewDelegate {
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 1
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//    let cell = TableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath)
//    return cell
    let cell = TableView.dequeueReusableCell(withIdentifier: "tableCell") as! TableViewCell
    return cell
}

func numberOfSections(in tableView: UITableView) -> Int {
    return sectionArray.count
}

func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    return sectionArray[section]
}

func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 170.0
}


}
