//
//  DataVC.swift
//  5. Compilation
//
//  Created by Mohit Pareek  on 08/03/20.
//  Copyright © 2020 Mohit Pareek . All rights reserved.
//

import UIKit


class DataVC: UIViewController, TableViewDataSendingProtocol {
    
    // indicator view initialization
    var loadMoreActivity: UIActivityIndicatorView = {
        
        let indicatorView = UIActivityIndicatorView()
        indicatorView.hidesWhenStopped = true
        indicatorView.style = .large
        return indicatorView
        
    }()

    @IBOutlet weak var tableView: UITableView!
    
    
    // defined in datamodel file
    var arrayForTable : [UserDetails] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let nib = UINib(nibName: "DetailsCell", bundle: nil)
        
        tableView.register(nib, forCellReuseIdentifier: "customDetailsCell")
        
        setInitialData()
        
        tableView.tableFooterView = loadMoreActivity
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        tableView.reloadData()

        tableView.tableFooterView?.isHidden = true
        
    }
    
    func setInitialData() {
        
        arrayForTable = (1...10).map { (void) -> UserDetails in
            UserDetails(image: .add, name: "Some", address: "Thing", details: "Is not right", age: "10")
        }
    }
    
   @objc func getNewData() {
        
        let count = arrayForTable.count
        
        let newData = (1...10).map { (void) -> UserDetails in
            UserDetails(image: .remove, name: "Some", address: "Thing", details: "Is not right", age: "20")}
        
        arrayForTable.append(contentsOf: newData)
        
        if arrayForTable.count > count {
            
            tableView.reloadData()
            loadMoreActivity.stopAnimating()
            tableView.tableFooterView?.isHidden = true
        }

    }
    
    
    
    
    @IBAction func addButtonTapped(_ sender: UIBarButtonItem) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(identifier: "AddDataVc") as! AddDataVc
       // setting the delegate of AddDataVC to self
        vc.delegate = self
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    // MARK: function of protocol
    func sendDataToDataVC(newArrayElement: UserDetails) {
        self.arrayForTable.append(newArrayElement)
    }
    

}

extension DataVC : UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayForTable.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "customDetailsCell") as! DetailsCell
        cell.addDataToOutlets(image: arrayForTable[indexPath.row].image, name: arrayForTable[indexPath.row].name, address: arrayForTable[indexPath.row].address, details: arrayForTable[indexPath.row].details, age: arrayForTable[indexPath.row].age)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 115
    }
    

    
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        if scrollView.contentOffset.y > 0 {
            if arrayForTable.count < 20 {
                perform(#selector(getNewData), with: nil, afterDelay: 2.0)
                loadMoreActivity.startAnimating()
            }
            
            
        }
    }
    
}
