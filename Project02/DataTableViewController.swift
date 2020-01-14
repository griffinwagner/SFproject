//
//  DataTableViewController.swift
//  Project02
//
//  Created by Griffin Wagner on 1/12/20.
//  Copyright © 2020 Synappse. All rights reserved.
//

import UIKit
import MapKit


class DataTableViewController: UITableViewController {

    @IBOutlet weak var SBMap: MKMapView!
    @IBOutlet weak var VBMap: MKMapView!
    @IBOutlet weak var LPMap: MKMapView!
    @IBOutlet weak var FPMap: MKMapView!
    @IBOutlet weak var JBMap: MKMapView!
    @IBOutlet weak var SLEMap: MKMapView!
    @IBOutlet weak var NFMap: MKMapView!
    @IBOutlet weak var MEMap: MKMapView!
    @IBOutlet weak var SFMap: MKMapView!
    @IBOutlet weak var SF2Map: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        SBMap.layer.cornerRadius=15;
        VBMap.layer.cornerRadius=15;
        LPMap.layer.cornerRadius=15;
        FPMap.layer.cornerRadius=15;
        JBMap.layer.cornerRadius=15;
        SLEMap.layer.cornerRadius=15;
        NFMap.layer.cornerRadius=15;
        MEMap.layer.cornerRadius=15;
        SFMap.layer.cornerRadius=15;
        SF2Map.layer.cornerRadius=15;

// For SB and Span
        SBMap.mapType = MKMapType.standard
        let SBlocation = CLLocationCoordinate2D(latitude: 27.839125,longitude: -80.47081944444444)
        let span = MKCoordinateSpan(latitudeDelta: 0.12, longitudeDelta: 0.12)
        let SBregion = MKCoordinateRegion(center: SBlocation, span: span)
        SBMap.setRegion(SBregion, animated: true)
        let SBannotation = MKPointAnnotation()
        SBannotation.coordinate = SBlocation
        SBMap.addAnnotation(SBannotation)
        
        //For VB
        VBMap.mapType = MKMapType.standard
        let VBlocation = CLLocationCoordinate2D(latitude: 27.590141666666664,longitude: -80.35523888888888)
        let VBregion = MKCoordinateRegion(center: VBlocation, span: span)
        VBMap.setRegion(VBregion, animated: true)
        let VBannotation = MKPointAnnotation()
        VBannotation.coordinate = VBlocation
        VBMap.addAnnotation(VBannotation)

        //For LP
        LPMap.mapType = MKMapType.standard
        let LPlocation = CLLocationCoordinate2D(latitude: 27.53500000,longitude: -80.34217888888889)
        let LPregion = MKCoordinateRegion(center: LPlocation, span: span)
        LPMap.setRegion(LPregion, animated: true)
        let LPannotation = MKPointAnnotation()
        LPannotation.coordinate = LPlocation
        LPMap.addAnnotation(LPannotation)
        
        //For FP
        FPMap.mapType = MKMapType.standard
        let FPlocation = CLLocationCoordinate2D(latitude: 27.475569444444442,longitude: -80.3266)
        let FPregion = MKCoordinateRegion(center: FPlocation, span: span)
        FPMap.setRegion(FPregion, animated: true)
        let FPannotation = MKPointAnnotation()
        FPannotation.coordinate = FPlocation
        FPMap.addAnnotation(FPannotation)
        
        //For JB
        JBMap.mapType = MKMapType.standard
        let JBlocation = CLLocationCoordinate2D(latitude: 27.224413888888886,longitude: -80.20233888888889)
        let JBregion = MKCoordinateRegion(center: JBlocation, span: span)
        JBMap.setRegion(JBregion, animated: true)
        let JBannotation = MKPointAnnotation()
        JBannotation.coordinate = JBlocation
        JBMap.addAnnotation(JBannotation)

        //For SLE
        SLEMap.mapType = MKMapType.standard
        let SLElocation = CLLocationCoordinate2D(latitude: 27.164975,longitude: -80.17184722222223)
        let SLEregion = MKCoordinateRegion(center: SLElocation, span: span)
        SLEMap.setRegion(SLEregion, animated: true)
        let SLEannotation = MKPointAnnotation()
        SLEannotation.coordinate = SLElocation
        SLEMap.addAnnotation(SLEannotation)

        //For NF
        NFMap.mapType = MKMapType.standard
        let NFlocation = CLLocationCoordinate2D(latitude: 27.21002222222222,longitude: -80.269175)
        let NFregion = MKCoordinateRegion(center: NFlocation, span: span)
        NFMap.setRegion(NFregion, animated: true)
        let NFannotation = MKPointAnnotation()
        NFannotation.coordinate = NFlocation
        NFMap.addAnnotation(NFannotation)
        
        //For ME
        MEMap.mapType = MKMapType.standard
        let MElocation = CLLocationCoordinate2D(latitude: 27.208949999999998,longitude: -80.24796944444445)
        let MEregion = MKCoordinateRegion(center: MElocation, span: span)
        MEMap.setRegion(MEregion, animated: true)
        let MEannotation = MKPointAnnotation()
        MEannotation.coordinate = MElocation
        MEMap.addAnnotation(MEannotation)

        //For SF
        SFMap.mapType = MKMapType.standard
        let SFlocation = CLLocationCoordinate2D(latitude: 27.18815,longitude: -80.261425)
        let SFregion = MKCoordinateRegion(center: SFlocation, span: span)
        SFMap.setRegion(SFregion, animated: true)
        let SFannotation = MKPointAnnotation()
        SFannotation.coordinate = SFlocation
        SFMap.addAnnotation(SFannotation)
        
        //For SF2
        SF2Map.mapType = MKMapType.standard
        let SF2location = CLLocationCoordinate2D(latitude: 27.114194444444447,longitude: -80.28286111111112)
        let SF2region = MKCoordinateRegion(center: SF2location, span: span)
        SF2Map.setRegion(SF2region, animated: true)
        let SF2annotation = MKPointAnnotation()
        SF2annotation.coordinate = SF2location
        SF2Map.addAnnotation(SF2annotation)

        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 0
//    }

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
