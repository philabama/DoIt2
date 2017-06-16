//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Scott Smith on 6/16/17.
//  Copyright © 2017 Scott Smith. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    @IBOutlet var taskLabel: UILabel!
    var task = Task()
var previousVC  = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if task.important
        {
            taskLabel.text = "❗️ \(task.name)"
        }
        else
        {
            taskLabel.text = task.name
        }
    }

    @IBAction func completeTapped(_ sender: Any) {
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
        
    }
   }
