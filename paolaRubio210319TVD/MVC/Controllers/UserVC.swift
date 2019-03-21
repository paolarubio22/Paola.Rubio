//
//  ViewController.swift
//  paolaRubio210319TVD
//
//  Created by Universidad Politecnica de Gómez Palacio on 21/03/19.
//  Copyright © 2019 Universidad Politecnica de Gómez Palacio. All rights reserved.
//

import UIKit

class UserVC: UIViewController
{
    var users: [User] = []
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.setUsersDefault()
    }
    
    func setUsersDefault()
    {
        self.users.append(User(firstName: "Angel", lastName: "Rubio"))
        self.users.append(User(firstName: "Ivan", lastName: "Perez"))
        self.users.append(User(firstName: "Alexia", lastName: "Castro"))
        self.users.append(User(firstName: "Aitana", lastName: "Crrillo"))
    }
}

extension UserVC: UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userTVCell", for: indexPath) as! UserTVCell
        
        let user: User = self.users[indexPath.row]
        cell.lblUsername.text = "\(user.firstName!) \(user.lastName!)"
        
        return cell
    }
}

extension UserVC: UITableViewDelegate
{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        print("didSelectRowAt.indexPath.row\(indexPath.row)")
    }
}
