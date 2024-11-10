//
//  ViewController.swift
//  SwiftPractice
//
//  Created by Thakur Arjun Singh on 10/11/24.
//

import UIKit
import Alamofire
import ObjectMapper
class GetApiVC: UIViewController {
    
    //MARK: -  IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: -  Object
    var viewModel = GetApiVM()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.separatorColor = .black
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        viewModel.getMethodApi {
            self.tableView.reloadData()
        }
    }
    
}
//MARK: -  Tableview's delegates and datasources
extension GetApiVC: UITableViewDataSource ,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.userArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        let data = viewModel.userArray[indexPath.row]
        cell.configure(with: data)
        return cell
    }
    
}




