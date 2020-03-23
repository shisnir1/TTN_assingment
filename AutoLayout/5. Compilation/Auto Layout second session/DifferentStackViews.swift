//
//  DifferentStackViews.swift
//  5. Compilation
//
//  Created by Mohit Pareek  on 14/03/20.
//  Copyright © 2020 Mohit Pareek . All rights reserved.
//

import UIKit

class DifferentStackViews: UIViewController {

    @IBOutlet weak var textField: UITextField!
    // parent view where satckview will pe added
    @IBOutlet weak var parentView: UIView!
    
    var firstView : UIView {
        let view1 = UIView()
        view1.backgroundColor = .red
        return view1
        
    }
    
    var secondView : UIView {
        let view1 = UIView()
        view1.backgroundColor = .cyan
        return view1
    }
   
    
    var thirdView : UIView {
        let view1 = UIView()
        view1.backgroundColor = .brown
        return view1
    }
    
    
    var fourthView : UIView {
        let view1 = UIView()
        view1.backgroundColor = .blue
        
        return view1
    }
    
    
    let verticalStackView = UIStackView()
    
    let horizontalStackView = UIStackView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
    }
   
    // function to add a vertical stack inside a parent view
    func addVStack(){
        verticalStackView.translatesAutoresizingMaskIntoConstraints = false
        verticalStackView.axis = .vertical
        verticalStackView.alignment = .fill
        verticalStackView.distribution = .fillEqually
        parentView.addSubview(verticalStackView)
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: verticalStackView, attribute: .top, relatedBy: .equal, toItem: parentView, attribute: .top, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: verticalStackView, attribute: .leading, relatedBy: .equal, toItem: parentView, attribute: .leading, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: verticalStackView, attribute: .trailing, relatedBy: .equal, toItem: parentView, attribute: .trailing, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: verticalStackView, attribute: .bottom, relatedBy: .equal, toItem: parentView, attribute: .bottom, multiplier: 1, constant: 0)
        ])
    }
    
    func addHStack() {
        horizontalStackView.translatesAutoresizingMaskIntoConstraints = false
        horizontalStackView.axis = .horizontal
        horizontalStackView.alignment = .fill
        horizontalStackView.distribution = .fillEqually
        verticalStackView.addArrangedSubview(horizontalStackView)
//        NSLayoutConstraint.activate([
//            NSLayoutConstraint(item: horizontalStackView, attribute: .top, relatedBy: .equal, toItem: parentView, attribute: .top, multiplier: 1, constant: 0),
//            NSLayoutConstraint(item: horizontalStackView, attribute: .leading, relatedBy: .equal, toItem: parentView, attribute: .leading, multiplier: 1, constant: 0),
//            NSLayoutConstraint(item: horizontalStackView, attribute: .trailing, relatedBy: .equal, toItem: parentView, attribute: .trailing, multiplier: 1, constant: 0),
//            NSLayoutConstraint(item: horizontalStackView, attribute: .bottom, relatedBy: .equal, toItem: parentView, attribute: .bottom, multiplier: 1, constant: 0)
//        ])
    }
    
    
    func addFirst() {
        let viewToBeAdded = firstView
        verticalStackView.addArrangedSubview(viewToBeAdded)
        viewWillAppear(true)
    }
    
    
    func addSecond() {
        let viewToBeAdded1 = firstView
        let viewToBeAdded2 = secondView
        verticalStackView.addArrangedSubview(viewToBeAdded1)
        verticalStackView.addArrangedSubview(viewToBeAdded2)
    }
    
    
    func addThird() {
        
        let viewToBeAdded1 = firstView
        let viewToBeAdded2 = secondView
        let viewToBeAdded3 = thirdView
        verticalStackView.addArrangedSubview(viewToBeAdded1)
        verticalStackView.addArrangedSubview(viewToBeAdded2)
        verticalStackView.addArrangedSubview(viewToBeAdded3)
        
    }
    
    func addFourth() {
        let viewToBeAdded1 = firstView
        let viewToBeAdded2 = secondView
        let viewToBeAdded3 = thirdView
        let viewToBeAdded4 = fourthView
        horizontalStackView.addArrangedSubview(viewToBeAdded1)
        horizontalStackView.addArrangedSubview(viewToBeAdded2)
        horizontalStackView.addArrangedSubview(viewToBeAdded3)
        horizontalStackView.addArrangedSubview(viewToBeAdded4)
    }
 
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        if self.textField.text == "1" {
            addVStack()
            addFirst()
        }
        if self.textField.text == "2" {
            addVStack()
            addSecond()
        }
        if self.textField.text == "3" {
            addVStack()
            addThird()
        }
        if self.textField.text == "4" {
           
        }
        
    }
    

}
