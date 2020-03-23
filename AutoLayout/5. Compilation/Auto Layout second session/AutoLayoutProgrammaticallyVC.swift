//
//  AutoLayoutProgrammaticallyVC.swift
//  5. Compilation
//
//  Created by Mohit Pareek  on 10/03/20.
//  Copyright © 2020 Mohit Pareek . All rights reserved.
//

import UIKit

class AutoLayoutProgrammaticallyVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        addViews()
    }
    

    func addViews() {
        
        let viewSafeArea = self.view.safeAreaLayoutGuide


        // MARK: first view i.e; green view
        let view1 = UIView()
        view1.translatesAutoresizingMaskIntoConstraints = false
        view1.backgroundColor = .green
        self.view.addSubview(view1) //add in hierarchy

        let constraints1 = [
            NSLayoutConstraint(item: view1, attribute: .leading, relatedBy: .equal, toItem: viewSafeArea, attribute: .leading, multiplier: 1.0, constant: 0),

            NSLayoutConstraint(item: view1, attribute: .top, relatedBy: .equal, toItem: viewSafeArea, attribute: .top, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: view1, attribute: .width, relatedBy: .equal, toItem: viewSafeArea, attribute: .width, multiplier: 0.5, constant: 0),

            NSLayoutConstraint(item: view1, attribute: .height, relatedBy: .equal, toItem: viewSafeArea, attribute: .height, multiplier: 0.5, constant: 0)
        ]
        NSLayoutConstraint.activate(constraints1)


        let image1 = UIImageView()
        image1.translatesAutoresizingMaskIntoConstraints = false
        image1.image = #imageLiteral(resourceName: "1200px-SNice.svg")
        view1.addSubview(image1)
        
        let imageConstraints1 = [
        
            NSLayoutConstraint(item: image1, attribute: .centerX, relatedBy: .equal, toItem: view1, attribute: .centerX, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: image1, attribute: .centerY, relatedBy: .equal, toItem: view1, attribute: .centerY, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: image1, attribute: .width, relatedBy: .equal, toItem: view1, attribute: .width, multiplier: 0.3, constant: 0),
            NSLayoutConstraint(item: image1, attribute: .height, relatedBy: .equal, toItem: view1, attribute: .height, multiplier: 0.3, constant: 0)
        
        ]
        
        NSLayoutConstraint.activate(imageConstraints1)
        
        
        let label1 = UILabel()
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.text = "Ray"
        view1.addSubview(label1)
        
        let labelConstraints1 = [
        
            NSLayoutConstraint(item: label1, attribute: .top, relatedBy: .equal, toItem: image1, attribute: .bottom, multiplier: 1, constant: 8),
           
            NSLayoutConstraint(item: label1, attribute: .centerX, relatedBy: .equal, toItem: view1, attribute: .centerX, multiplier: 1, constant: 0)
        
        ]
        
        
        NSLayoutConstraint.activate(labelConstraints1)
        
        
        let view2 = UIView()
        view2.translatesAutoresizingMaskIntoConstraints = false
        view2.backgroundColor = .yellow
        self.view.addSubview(view2)
        
        let constraints2 = [
        
            NSLayoutConstraint(item: view2, attribute: .trailing, relatedBy: .equal, toItem: viewSafeArea, attribute: .trailing, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: view2, attribute: .top, relatedBy: .equal, toItem: viewSafeArea, attribute: .top, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: view2, attribute: .width, relatedBy: .equal, toItem: viewSafeArea, attribute: .width, multiplier: 0.5, constant: 0),
            NSLayoutConstraint(item: view2, attribute: .height, relatedBy: .equal, toItem: viewSafeArea, attribute: .height, multiplier: 0.5, constant: 0)
        ]
        
        NSLayoutConstraint.activate(constraints2)
        
        let image2 = UIImageView()
        image2.translatesAutoresizingMaskIntoConstraints = false
        image2.image = #imageLiteral(resourceName: "1200px-SNice.svg")
        view2.addSubview(image2)

        let imageConstraints2 = [

            NSLayoutConstraint(item: image2, attribute: .centerX, relatedBy: .equal, toItem: view2, attribute: .centerX, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: image2, attribute: .centerY, relatedBy: .equal, toItem: view2, attribute: .centerY, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: image2, attribute: .width, relatedBy: .equal, toItem: view2, attribute: .width, multiplier: 0.3, constant: 0),
            NSLayoutConstraint(item: image2, attribute: .height, relatedBy: .equal, toItem: view2, attribute: .height, multiplier: 0.3, constant: 0)

        ]

        NSLayoutConstraint.activate(imageConstraints2)
        
        let label2 = UILabel()
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.text = "Matthijjs"
        view2.addSubview(label2)


        let labelConstraints2 = [

            NSLayoutConstraint(item: label2, attribute: .top, relatedBy: .equal, toItem: image2, attribute: .bottom, multiplier: 1, constant: 8),

            NSLayoutConstraint(item: label2, attribute: .centerX, relatedBy: .equal, toItem: view2, attribute: .centerX, multiplier: 1, constant: 0)

        ]

        NSLayoutConstraint.activate(labelConstraints2)

        let view3 = UIView()
        view3.translatesAutoresizingMaskIntoConstraints = false
        view3.backgroundColor = .red
        self.view.addSubview(view3)
        
        let constraints3 = [
        
            NSLayoutConstraint(item: view3, attribute: .leading, relatedBy: .equal, toItem: viewSafeArea, attribute: .leading, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: view3, attribute: .top, relatedBy: .equal, toItem: view1, attribute: .bottom, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: view3, attribute: .width, relatedBy: .equal, toItem: viewSafeArea, attribute: .width, multiplier: 0.5, constant: 0),
            NSLayoutConstraint(item: view3, attribute: .height, relatedBy: .equal, toItem: viewSafeArea, attribute: .height, multiplier: 0.5, constant: 0)
        
        ]
        
        NSLayoutConstraint.activate(constraints3)
        
        let image3 = UIImageView()
        image3.translatesAutoresizingMaskIntoConstraints = false
        image3.image = #imageLiteral(resourceName: "1200px-SNice.svg")
        view3.addSubview(image3)

        let imageConstraints3 = [

            NSLayoutConstraint(item: image3, attribute: .centerX, relatedBy: .equal, toItem: view3, attribute: .centerX, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: image3, attribute: .centerY, relatedBy: .equal, toItem: view3, attribute: .centerY, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: image3, attribute: .width, relatedBy: .equal, toItem: view3, attribute: .width, multiplier: 0.3, constant: 0),
            NSLayoutConstraint(item: image3, attribute: .height, relatedBy: .equal, toItem: view3, attribute: .height, multiplier: 0.3, constant: 0)

        ]

        NSLayoutConstraint.activate(imageConstraints3)
        
        let label3 = UILabel()
        label3.translatesAutoresizingMaskIntoConstraints = false
        label3.text = "Dennis Ritchie"
        view3.addSubview(label3)


        let labelConstraints3 = [

            NSLayoutConstraint(item: label3, attribute: .top, relatedBy: .equal, toItem: image3, attribute: .bottom, multiplier: 1, constant: 8),

            NSLayoutConstraint(item: label3, attribute: .centerX, relatedBy: .equal, toItem: view3, attribute: .centerX, multiplier: 1, constant: 0)

        ]

        NSLayoutConstraint.activate(labelConstraints3)

        
        let view4 = UIView()
        view4.translatesAutoresizingMaskIntoConstraints = false
        view4.backgroundColor = .blue
        self.view.addSubview(view4)
        
        
        
        let constraints4 = [
        
            NSLayoutConstraint(item: view4, attribute: .trailing, relatedBy: .equal, toItem: viewSafeArea, attribute: .trailing, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: view4, attribute: .top, relatedBy: .equal, toItem: view2, attribute: .bottom, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: view4, attribute: .width, relatedBy: .equal, toItem: viewSafeArea, attribute: .width, multiplier: 0.5, constant: 0),
            NSLayoutConstraint(item: view4, attribute: .height, relatedBy: .equal, toItem: viewSafeArea, attribute: .height, multiplier: 0.5, constant: 0)
        
        ]
        
        NSLayoutConstraint.activate(constraints4)
        
        let image4 = UIImageView()
        image4.translatesAutoresizingMaskIntoConstraints = false
        image4.image = #imageLiteral(resourceName: "1200px-SNice.svg")
        view4.addSubview(image4)

        let imageConstraints4 = [

            NSLayoutConstraint(item: image4, attribute: .centerX, relatedBy: .equal, toItem: view4, attribute: .centerX, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: image4, attribute: .centerY, relatedBy: .equal, toItem: view4, attribute: .centerY, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: image4, attribute: .width, relatedBy: .equal, toItem: view4, attribute: .width, multiplier: 0.3, constant: 0),
            NSLayoutConstraint(item: image4, attribute: .height, relatedBy: .equal, toItem: view4, attribute: .height, multiplier: 0.3, constant: 0)

        ]

        NSLayoutConstraint.activate(imageConstraints4)
        
        let label4 = UILabel()
        label4.translatesAutoresizingMaskIntoConstraints = false
        label4.text = "Dennis Ritchie"
        view4.addSubview(label4)


        let labelConstraints4 = [

            NSLayoutConstraint(item: label4, attribute: .top, relatedBy: .equal, toItem: image4, attribute: .bottom, multiplier: 1, constant: 8),

            NSLayoutConstraint(item: label4, attribute: .centerX, relatedBy: .equal, toItem: view4, attribute: .centerX, multiplier: 1, constant: 0)

        ]

        NSLayoutConstraint.activate(labelConstraints4)
        

    }
    
   
}
