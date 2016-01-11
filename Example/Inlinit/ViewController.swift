//
//  ViewController.swift
//  Inlinit
//
//  Created by Jo Albright on 01/06/2016.
//  Copyright (c) 2016 Jo Albright. All rights reserved.
//

import UIKit

import Inlinit

extension UIView: Inlinit { }

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        UILabel {
            
            $0.text = "This is Awesome!"
            $0.textColor = UIColor.cyanColor()
            $0.frame = CGRect(x: 20, y: 20, width: view.frame.width - 40, height: 40)
            view.addSubview($0)
            
        }
        
        view.addSubview(UIButton {
            
            $0.setTitle("Submit", forState: .Normal)
            $0.setTitleColor(UIColor.whiteColor(), forState: .Normal)
            $0.backgroundColor = UIColor.magentaColor()
            $0.frame = CGRect(x: 20, y: 60, width: view.frame.width - 40, height: 40)
            
        })
        
        // initialize & set properties
        var me = Person {
            
            $0.name = "Jo"
            $0.age = 32
            
        }
        
        print(me)
        
        // update properties
        me <- {
            
            $0.age = 30
            $0.name = "John"
            
        }
        
        print(me)
        
    }

}

struct Person: Inlinit {
    
    var age: Int = 0
    var name: String?
    
}

