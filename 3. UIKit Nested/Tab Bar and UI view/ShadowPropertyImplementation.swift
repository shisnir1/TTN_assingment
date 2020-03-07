//
//  ShadowPropertyImplementation.swift
//  3. UIKit Nested
//
//  Created by Mohit Pareek  on 04/03/20.
//  Copyright © 2020 Mohit Pareek . All rights reserved.
//

import UIKit

class ShadowPropertyImplementation: UIViewController {

    @IBOutlet weak var shadowView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setShadowView()
        
    }
    
    
    //MARK: - function to set shadow on view
    func setShadowView() {
        shadowView.layer.cornerRadius = shadowView.frame.height/2
        shadowView.clipsToBounds = true
        shadowView.layer.shadowPath = UIBezierPath(roundedRect: self.shadowView.bounds, cornerRadius: self.shadowView.layer.cornerRadius).cgPath
        shadowView.layer.shadowColor = UIColor.green.cgColor
        shadowView.layer.shadowRadius = 100
        shadowView.layer.shadowOpacity  = 1
        shadowView.layer.shadowOffset = CGSize(width: 10, height: 10)
        shadowView.layer.masksToBounds = false
    }

    /*
    // MARK: - Frame and Bound

    The frame is the coordinates and dimensions of its rectangular boundary relative to its superview.
     
    The bounds (CGRect) is the coordinates and dimensions of its rectangular boundary relative to its own view.
     
     // MARK: - Clip to bounds and mask to bounds
     
     maskToBounds- Any sublayers of the layer that extend outside its boundaries will be clipped to those boundaries
     clipToBounds- The use case for clipsToBounds is more for subviews which are partially outside the main view.
     
     // MARK: - Strong and Weak Property.
     strong - The compiler will take care that any object that you assign to this property will not be destroyed as long as you point to it with a strong reference. Only once you set the property to nil will the object get destroyed.
     
     weak - The object referencing weakly only lives on because at least one other object holds a strong reference to it. Once that is no longer the case, the object gets destroyed and your weak property will automatically get set to nil
     
     
    */

}
