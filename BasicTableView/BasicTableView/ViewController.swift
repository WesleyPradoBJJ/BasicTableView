//
//  ViewController.swift
//  BasicTableView
//
//  Created by Wesley Prado on 13/11/2022.
//

import UIKit

class ViewController: UIViewController {

    // Step 01: On the storyboard "Main" create a TableView element and set its constraints to 0.
    //Step 02: Make the "IBOutlet" connection with the ViewController.
    
    @IBOutlet weak var tableView: UITableView!
    
    //Step 08: Create an Array of Object! 
    var usersList: [Animal] = [Animal(user:"Lion" , userImage:UIImage(named: "lion") ?? UIImage()),
                               Animal(user:"Owl" , userImage:UIImage(named: "owl") ?? UIImage()),
                               Animal(user:"Fox" , userImage:UIImage(named: "fox") ?? UIImage()),
                               Animal(user:"Bear" , userImage:UIImage(named: "bear") ?? UIImage()),
                               Animal(user:"Gorilla" , userImage:UIImage(named: "gorilla") ?? UIImage()),
                               Animal(user:"Squirrel" , userImage:UIImage(named: "squirrel") ?? UIImage()),
                               Animal(user:"Wolf" , userImage:UIImage(named: "wolf") ?? UIImage()),
                               Animal(user:"Deer" , userImage:UIImage(named: "deer") ?? UIImage()),
                               Animal(user:"Eagle" , userImage:UIImage(named: "eagle") ?? UIImage()),
                               Animal(user:"Elephant" , userImage:UIImage(named: "elephant") ?? UIImage()),
                               Animal(user:"Rabbit" , userImage:UIImage(named: "rabbit") ?? UIImage()),
                               Animal(user:"Raccoon" , userImage:UIImage(named: "raccoon") ?? UIImage()),
                               Animal(user:"Rhino" , userImage:UIImage(named: "rhino") ?? UIImage()),
                               Animal(user:"Snake" , userImage:UIImage(named: "snake") ?? UIImage()),
                               Animal(user:"Tiger" , userImage:UIImage(named: "tiger") ?? UIImage())]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }
    
    //Step 03: Create the methods(Functions) in charge of the initial settings and the ViewController extension for the TableView Protocols.
    func configTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CustomTableViewCell.nib(), forCellReuseIdentifier: CustomTableViewCell.identifier)
    }

}



//Extension created to start the TableView's Protocols.
//MARK: TableView Protocols
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //Step 09: insert the list with the parameter ".count" to add the number of rows on the method.
        return usersList.count
    }
    
    //Step 10: Create Cell!
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Create cell with ".dequeueReusableCell" where identifier will be the one we created for the cell before on the XIB and the swift file.
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as? CustomTableViewCell
        //This part of code is in charge of start the method "setupCell" we created before accessing the array of object.
        cell?.setupCell(usersList[indexPath.row])
        //Setting the return to show the cell we just made.
        return cell ?? UITableViewCell()
    }
    //Set height of the cell.
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
}

/* Step 04: After this initial settings let's create our UITableViewCell.
- Right click on main folder in this case named "BasicTableView" and select
 "New Group".
 
- Right Click on this new folder and select "New File", create a new "Cocoa
  touch class" file with a XIB file. */
