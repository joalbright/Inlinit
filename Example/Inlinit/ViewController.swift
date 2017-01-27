//
//  ViewController.swift
//  Inlinit
//
//  Created by Jo Albright on 01/06/2016.
//  Copyright (c) 2016 Jo Albright. All rights reserved.
//

import UIKit

extension UIView: Inlinit { }

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label: UILabel = UILabel {
            
            $0.text = "This is Awesome!"
            $0.textColor = UIColor.cyan
            $0.frame = CGRect(x: 20, y: 20, width: view.frame.width - 40, height: 40)
            view.addSubview($0)
            
        }
        
        view.addSubview(label)
        
        view.addSubview(UIButton {
            
            $0.setTitle("Submit", for: UIControlState())
            $0.setTitleColor(UIColor.white, for: UIControlState())
            $0.backgroundColor = UIColor.magenta
            $0.frame = CGRect(x: 20, y: 60, width: view.frame.width - 40, height: 40)
            
        })
        
        // initialize & set properties
        var me = Person {
            
            $0.name = "Jo"
            $0.age = 32
            
        }
        
        print(me)
        
        // update properties only works on classes
        me <- {
            
            $0.name = "John"
            $0.age = 30
            
        }
        
        print(me)
        
    }

}

class Person: Inlinit {
    
    var age: Int = 0
    var name: String?
    
    required init() { }
    
}

