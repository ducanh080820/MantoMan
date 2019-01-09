//
//  DistrictsTableViewController.swift
//  MantoMan
//
//  Created by Duc Anh on 1/8/19.
//  Copyright © 2019 SonTocDai. All rights reserved.
//

import UIKit

class DistrictsTableViewController: UITableViewController {
    var cityCode : Int?
    var selectedCity = GetDataFromPlist.sharedInstant.districts
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(cityCode)
        selectedCity = selectedCity.filter({ (data) -> Bool in
            return data.CityCode == cityCode
            
        })
        tableView.dataSource = self
        
        tableView.delegate = self
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return selectedCity.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        
        cell.textLabel?.text = selectedCity[indexPath.row].Name
        cell.detailTextLabel?.text = String(selectedCity[indexPath.row].DistrictCode)
        
        return cell
    }
    


}
