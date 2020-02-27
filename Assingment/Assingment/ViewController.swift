//
//  ViewController.swift
//  Assingment
//
//  Created by Shishir SIngh on 27/02/20.
//  Copyright © 2020 Shishir SIngh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Forward(_ sender: UIButton) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "ViewController1")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

