//
//  ViewController1.swift
//  Assingment
//
//  Created by Shishir SIngh on 27/02/20.
//  Copyright © 2020 Shishir SIngh. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func Back(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
        
    }
    
    @IBAction func Forward(_ sender: UIButton) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
               let vc = storyBoard.instantiateViewController(withIdentifier: "ViewController2")
               self.navigationController?.pushViewController(vc, animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
