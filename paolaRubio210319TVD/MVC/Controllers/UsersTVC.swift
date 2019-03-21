//
//  UsersTVCTableViewController.swift
//  paolaRubio210319TVD
//
//  Created by Universidad Politecnica de Gómez Palacio on 21/03/19.
//  Copyright © 2019 Universidad Politecnica de Gómez Palacio. All rights reserved.
//

import UIKit

class UsersTVC: UITableViewController
{
    let username: [String] = ["Angel", "Ivan", "Alexia", "Aitana"]
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.username.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userTVCell", for: indexPath) as! UserTVCell
        
        let username: String = self.username[indexPath.row]
        cell.lblUsername.text = username

        return cell
    }
}
