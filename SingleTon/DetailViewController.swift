//
//  DetailViewController.swift
//  SingleTon
//
//  Created by Son on 5/16/18.
//  Copyright © 2018 Son. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var index : Int?
    
    @IBOutlet weak var nameText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if index != nil {
            nameText.text = String(DataService.shared.numbers[index!])
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func saveDaTa(_ sender: UIBarButtonItem) {
        if nameText.text != "" {}
        if let indexpath = index{
            DataService.shared.numbers[indexpath] = Int(nameText.text ?? "") ?? 0
        } else{
            DataService.shared.numbers.append(Int(nameText.text ?? "") ?? 0)
        }
        navigationController?.popViewController(animated: true)
    }
    
}
