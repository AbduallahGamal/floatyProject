//
//  ViewController.swift
//  floatyProject
//
//  Created by Abdalla on 9/15/19.
//  Copyright © 2019 edu.data. All rights reserved.
//

import UIKit
import Floaty

class ViewController: UIViewController {

    @IBOutlet weak var floaty: Floaty!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        floaty.addItem("Take Your Photo", icon: UIImage(named: "iconfinder_8_1227648"), handler: { item in
            let alert = UIAlertController(title: "Hey", message: "I'm hungry...", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Me too", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            self.floaty.close()
        })
        
        floaty.addItem("Let's go to play", icon: UIImage(named: "iconfinder_game_512535"),handler: { item in
            
            self.performSegue(withIdentifier: "SecondView", sender: self)
        })
        
        floaty.addItem("Lets Share image", icon: UIImage(named: "iconfinder_resolutions-13_897238"))

        self.view.addSubview(floaty)
    }
}
