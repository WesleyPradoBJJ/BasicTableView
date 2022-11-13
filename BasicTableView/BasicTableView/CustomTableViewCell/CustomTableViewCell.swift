//
//  CustomTableViewCell.swift
//  BasicTableView
//
//  Created by Wesley Prado on 13/11/2022.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var userLabel: UILabel!
    
    
    //Step 05: Create Cell Identifier here and on the XIB file.
    static let identifier: String = "CustomTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    // This method works like a "ViewDidLoad" but it starts the cell instead. 
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    //Step 07: Create a func to get the info from the array of object and show it on the screen. 
    func setupCell(_ user: Animal){
        userLabel.text = user.user
        userImageView.image = user.userImage
    }
    
}

//We're not using the method "setSelected" so e can delete it.

// Step 06: Set the XIB file with the elements we want and set its constraints than connect it to the "CustomTableViewCell" with an "IBOutlet" connection.
