//
//  ViewController.swift
//  TP_ToDoList
//
//  Created by Clement Grenot on 03/12/2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellule = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! TableViewCell
        cellule.titre.text = toDo[indexPath.row]._nom
        return cellule
    }
    

    var toDo = [Todo]()
    
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        for i in 1...50 {
            toDo.append(Todo(nom: "test" + String(i), description: String(i)))
        }
        tableview.dataSource = self
    }


}

