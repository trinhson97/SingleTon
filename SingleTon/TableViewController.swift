//
//  TableViewController.swift
//  SingleTon
//
//  Created by Son on 5/16/18.
//  Copyright © 2018 Son. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.shared.numbers.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = String(DataService.shared.numbers[indexPath.row])


        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detaiviewcontroller = segue.destination as? DetailViewController{
            if let indexpath = tableView.indexPathForSelectedRow{
                detaiviewcontroller.index = indexpath.row
            }
        }
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        DataService.shared.numbers.remove(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: .fade)
    }
}
