//
//  ViewController.swift
//  ESwift
//
//  Created by TerroKot on 03/05/2021.
//  Copyright (c) 2021 TerroKot. All rights reserved.
//

import UIKit
import ESwift

class ViewController: UIViewController {
    
    @Default  (key: "kok")                    var neOpt: Bool
    @Default                                  var opt: Bool?

    @Default (key: "opt", defaultValue: true) var neOptTrue
    @Default (key: "opt", defaultValue: true) var optTrue: Bool?
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(neOpt)
        print(opt)

        print(neOptTrue)
        print(optTrue)



    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

