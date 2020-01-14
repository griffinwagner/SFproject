//
//  ListTableViewController.swift
//  Project02
//
//  Created by Griffin Wagner on 1/11/20.
//  Copyright © 2020 Synappse. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {
    @IBOutlet weak var cell0: UITableViewCell!
    @IBOutlet weak var cell1: UITableViewCell!
    @IBOutlet weak var cell2: UITableViewCell!
    @IBOutlet weak var cell3: UITableViewCell!
    @IBOutlet weak var cell4: UITableViewCell!
    @IBOutlet weak var cell5: UITableViewCell!

    @IBOutlet weak var cell6: UITableViewCell!
    @IBOutlet weak var cell7: UITableViewCell!
    @IBOutlet weak var cell8: UITableViewCell!
    @IBOutlet weak var cell9: UITableViewCell!
    @IBOutlet weak var cell10: UITableViewCell!
    
    
    @IBOutlet weak var SBToxin: UIImageView!
    @IBOutlet weak var SBBloom: UIImageView!
    @IBOutlet weak var VBToxin: UIImageView!
    @IBOutlet weak var VBBloom: UIImageView!
    @IBOutlet weak var LPToxin: UIImageView!
    @IBOutlet weak var LPBloom: UIImageView!
    @IBOutlet weak var FPToxin: UIImageView!
    @IBOutlet weak var FPBloom: UIImageView!
    @IBOutlet weak var JBToxin: UIImageView!
    @IBOutlet weak var JBBloom: UIImageView!
    @IBOutlet weak var SLEToxin: UIImageView!
    @IBOutlet weak var SLEBloom: UIImageView!
    @IBOutlet weak var NFToxin: UIImageView!
    @IBOutlet weak var NFBloom: UIImageView!
    @IBOutlet weak var METoxin: UIImageView!
    @IBOutlet weak var MEBloom: UIImageView!
    @IBOutlet weak var SFToxin: UIImageView!
    @IBOutlet weak var SFBloom: UIImageView!
    @IBOutlet weak var SF2Toxin: UIImageView!
    @IBOutlet weak var SF2Bloom: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let swiftColor = UIColor(red: 120/255, green: 120/255, blue: 120/255, alpha: 0.85);
        cell0?.backgroundColor = swiftColor
        cell1?.backgroundColor = swiftColor
        cell2?.backgroundColor = swiftColor
        cell3?.backgroundColor = swiftColor
        cell4?.backgroundColor = swiftColor
        cell5?.backgroundColor = swiftColor
        cell6?.backgroundColor = swiftColor
        cell7?.backgroundColor = swiftColor
        cell8?.backgroundColor = swiftColor
        cell9?.backgroundColor = swiftColor
        cell10?.backgroundColor = swiftColor
        
//
        FPToxin.image = UIImage(named: "warn")

        JBToxin.image = UIImage(named: "warn")
        METoxin.image = UIImage(named: "warn")
        SFToxin.image = UIImage(named: "warn")

     //   cell1?.backgroundColor = swiftColor
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source

   

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
