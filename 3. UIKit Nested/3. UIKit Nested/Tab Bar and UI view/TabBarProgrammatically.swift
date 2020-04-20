//
//  TabBarProgrammatically.swift
//  3. UIKit Nested
//
//  Created by Shishir Singh  on 03/03/20.
//  Copyright © 2020 Shishir Singh . All rights reserved.
//

import UIKit

class TabBarProgrammatically: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        settingTabBar()
        self.title = "Tab Bar Programmatically"
    
        
    }
    
    func settingTabBar() {
        let tabBar = UITabBar(frame: CGRect(x: 0, y: self.view.frame.height - 100, width: self.view.frame.width, height: 150))
         self.view.addSubview(tabBar)
        let firstItem = UITabBarItem(title: "First", image: nil, selectedImage: nil)
        let secondItem = UITabBarItem(title: "second", image: nil, selectedImage: nil)
        let thirdItem = UITabBarItem(title: "Third", image: nil, selectedImage: nil)
        
        tabBar.setItems([firstItem, secondItem, thirdItem], animated: false)
        tabBar.backgroundColor = .lightGray
        tabBarItem.badgeColor = .green
        
       
        
    }
    

    @IBAction func UIViewTapped(_ sender: UIButton) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(identifier: "UIViewPropertyImplement")
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
