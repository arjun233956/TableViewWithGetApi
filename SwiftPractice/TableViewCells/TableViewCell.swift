//
//  TableViewCell.swift
//  SwiftPractice
//
//  Created by Thakur Arjun Singh on 10/11/24.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    @IBOutlet weak var lblEmail: UILabel!
    
    func configure(with data: GetApiModel) {
        lblName.text = data.name
        lblEmail.text = data.email
        lblAddress.text = "\(data.address?.suite ?? ""), \(data.address?.street ?? ""),\(data.address?.city ?? "")"
    }
    
}
