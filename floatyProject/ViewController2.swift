//
//  ViewController2.swift
//  floatyProject
//
//  Created by Abdalla on 9/15/19.
//  Copyright © 2019 edu.data. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var tableVieew: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableVieew.delegate = self

    }
}

extension ViewController2: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableVieew.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        return cell
    }
    
    
}
