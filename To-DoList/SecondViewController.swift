//
//  SecondViewController.swift
//  To-DoList
//
//  Created by Amardeep Grewal on 7/19/16.
//  Copyright © 2016 Amardeep Grewal. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var task: UITextField!
    @IBAction func addTask(sender: AnyObject) {
        
        toDoList.append(task.text!)
        task.text = ""
        NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "arr")
        
    }
    

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
       
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

