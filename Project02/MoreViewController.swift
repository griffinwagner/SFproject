//
//  MoreViewController.swift
//  Project02
//
//  Created by Griffin Wagner on 1/14/20.
//  Copyright © 2020 Synappse. All rights reserved.
//

import UIKit

class MoreViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textBox: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.layer.cornerRadius=30;
        imageView.layer.borderWidth = 2.0;
        imageView.layer.masksToBounds = true;
        
        textBox.text = "The Indian River Lagoon Health App uses real-time water quality monitoring to detect unsafe Microcystin levels in the Indian River Lagoon. In addition, the IRL-Health app uses three-week data to forecast the chance of an algal bloom over the next 6-7 days. After 8AM every day, the machine learning algorithm has a proven 94.95% validation acccuracy for detecting Microcystin throughout the Indian River Lagoon. Before 8AM, ML algorithm predictions have an unproven accuracy. \n\nThe machine learning model for detecting algal blooms has a 92.9% validation accuracy for dates 6 to 7 days in advance. With both models are displayed in the IRL-Health app, they have different purposes.\n\nThe Microcystin detection algorithms can alert users about currents risks in the Indian River Lagoon while the bloom prediction algorithms warn users about forthcoming risks with strategies to prevent these blooms."
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
