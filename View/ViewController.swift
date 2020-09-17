//
//  ViewController.swift
//  Hwahae
//
//  Created by sapere4ude on 2020/09/11.
//  Copyright © 2020 sapere4ude. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var homeTableView: UITableView!
    
    let arr = ["a","b","c"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeTableView.delegate = self
        homeTableView.dataSource = self
        homeTableView.register(UINib(nibName: "HomeTableViewCell1", bundle: nil), forCellReuseIdentifier: "HomeTableViewCell1")
        
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell1", for: indexPath) as! HomeTableViewCell1
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
    }
    
    
}

