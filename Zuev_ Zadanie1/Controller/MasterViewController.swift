//
//  ViewController.swift
//  Zuev_ Zadanie1
//
//  Created by Ivan on 2/13/20.
//  Copyright © 2020 Ivan Zuev. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    var arr = Array(1...100)
    
    // MARK: - Table view data source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: MasterTableViewCell.self), for: indexPath) as! MasterTableViewCell
        
        cell.titleLabel.text = "Поручение №\(arr[indexPath.row])"
        cell.descriptionLabel.text = "Описание поручения №\(arr[indexPath.row])"
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetailViewController" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as! DetailViewController
                
                destinationController.number = arr[indexPath.row]
            }
        }
    }
}

