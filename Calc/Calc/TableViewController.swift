//
//  TableViewController.swift
//  Calc
//
//  Created by Diego Dominguez Alvarez on 22/01/17.
//  Copyright © 2017 Diego Dominguez Alvarez. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    let diasSemana:[String] = ["Lunes","Martes","Miercoles","Jueves","Viernes"]
    let diasFinSemana:[String] = ["Sabado","Domingo"]

    override func viewDidLoad() {
        super.viewDidLoad()


    }


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        var res:Int?
        if section == 0{
            res = diasSemana.count
        }else if section == 1{
            res = diasFinSemana.count
        }
        return res!
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        // Configure the cell...
        let section = indexPath.section
        let row = indexPath.row
        var data:[String]?
        
        if section == 0{
            data = diasSemana
        }else if section == 1{
            data = diasFinSemana
        }
        
        cell.textLabel?.text = data![row]
        
        
        return cell
    }
    

    

}
