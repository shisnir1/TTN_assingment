//
//  ViewController.swift
//  3. UIKit Nested
//
//  Created by Shishir Singh  on 03/03/20.
//  Copyright © 2020 Shishir Singh . All rights reserved.
//

import UIKit

class TabBarUsingStoryBoard: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func nextButtonTapped(_ sender: UIButton) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(identifier: "TabBarProgrammatically")
        self.navigationController?.pushViewController(vc, animated: true)
        
        
    }
    
    

}

