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

    var tableArray = [String] ()

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
    
    @IBOutlet weak var loadingSBBloom: UILabel!
    @IBOutlet weak var loadingVBBloom: UILabel!
    @IBOutlet weak var loadingLPBloom: UILabel!
    @IBOutlet weak var loadingFPBloom: UILabel!
    @IBOutlet weak var loadingJBBloom: UILabel!
    @IBOutlet weak var loadingSLEBloom: UILabel!
    @IBOutlet weak var loadingNFBloom: UILabel!
    @IBOutlet weak var loadingMEBloom: UILabel!
    @IBOutlet weak var loadingSFBloom: UILabel!
    @IBOutlet weak var loadingSF2Bloom: UILabel!
    
    @IBOutlet weak var loadingSBToxin: UILabel!
    @IBOutlet weak var loadingVBToxin: UILabel!
    @IBOutlet weak var loadingLPToxin: UILabel!
    @IBOutlet weak var loadingFPToxin: UILabel!
    @IBOutlet weak var loadingJBToxin: UILabel!
    @IBOutlet weak var loadingSLEToxin: UILabel!
    @IBOutlet weak var loadingNFToxin: UILabel!
    @IBOutlet weak var loadingMEToxin: UILabel!
    @IBOutlet weak var loadingSFToxin: UILabel!
    @IBOutlet weak var loadingSF2Toxin: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        parseJSON()

        
        
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

    func parseJSON() {
        
        let url = URL(string: "http://192.168.1.66:3000/downloadForiPhoneApp")
        
        print("hello")
        
        let task = URLSession.shared.dataTask(with: url!) {(data, response, error) in
            
            guard error == nil else {
                return
            }
            
            guard let content = data else {
                return
            }
            
            guard let json = (try? JSONSerialization.jsonObject(with: content, options: JSONSerialization.ReadingOptions.mutableContainers)) as? [String: Any] else {
                return
            }
            
            if let array = json["SB"] as? [String] {
                print("----")
                self.loadingSBBloom.text = array[0]
                self.loadingSBToxin.text = array[1]
                
                if (array[1] == "No Microcystin Detected"){
                    self.loadingSBToxin.textColor = UIColor(red: 3/255, green: 161/255, blue: 0/255, alpha: 1)
                } else {
                    self.loadingSBToxin.textColor = UIColor.red
                }
                
                if (array[0] == "No Chance Of Bloom"){
                    self.loadingSBBloom.textColor = UIColor(red: 3/255, green: 161/255, blue: 0/255, alpha: 1)
                } else {
                    self.loadingSBBloom.textColor = UIColor.red
                }
                
               
                
                self.tableArray = array
            }
            
            if let VBarray = json["VB"] as? [String] {
                print("----")
                self.loadingVBBloom.text = VBarray[0]
                self.loadingVBToxin.text = VBarray[1]
                
                if (VBarray[1] == "No Microcystin Detected"){
                    self.loadingVBToxin.textColor = UIColor(red: 3/255, green: 161/255, blue: 0/255, alpha: 1)
                } else {
                    self.loadingSBToxin.textColor = UIColor.red
                }

                if (VBarray[0] == "No Chance Of Bloom"){
                    self.loadingVBBloom.textColor = UIColor(red: 3/255, green: 161/255, blue: 0/255, alpha: 1)
                } else {
                    self.loadingVBBloom.textColor = UIColor.red
                }
                
                
                self.tableArray = VBarray
            }
            
            if let array = json["LP"] as? [String] {
                print("----")
                self.loadingLPBloom.text = array[0]
                
                if (array[0] == "No Chance Of Bloom"){
                    self.loadingLPBloom.textColor = UIColor(red: 3/255, green: 161/255, blue: 0/255, alpha: 1)
                } else {
                    self.loadingLPBloom.textColor = UIColor.red
                }
                
                self.loadingLPToxin.text = array[1]
                
                if (array[1] == "No Microcystin Detected"){
                    self.loadingLPToxin.textColor = UIColor(red: 3/255, green: 161/255, blue: 0/255, alpha: 1)
                } else {
                    self.loadingLPToxin.textColor = UIColor.red
                }

                
                self.tableArray = array
            }
            
            if let FParray = json["FP"] as? [String] {
                print("----")
                self.loadingFPBloom.text = FParray[0]
                
                if (FParray[0] == "No Chance Of Bloom"){
                    self.loadingFPBloom.textColor = UIColor(red: 3/255, green: 161/255, blue: 0/255, alpha: 1)
                } else {
                    self.loadingFPBloom.textColor = UIColor.red
                }
                
                self.loadingFPToxin.text = FParray[1]
                
                if (FParray[1] == "No Microcystin Detected"){
                    self.loadingFPToxin.textColor = UIColor(red: 3/255, green: 161/255, blue: 0/255, alpha: 1)
                } else {
                    self.loadingFPToxin.textColor = UIColor.red
                }

                
                self.tableArray = FParray
            }
            
            if let JBarray = json["JB"] as? [String] {
                print("----")
                self.loadingJBBloom.text = JBarray[0]
                
                if (JBarray[0] == "No Chance Of Bloom"){
                    self.loadingJBBloom.textColor = UIColor(red: 3/255, green: 161/255, blue: 0/255, alpha: 1)
                } else {
                    self.loadingJBBloom.textColor = UIColor.red
                }
                
                self.loadingJBToxin.text = JBarray[1]
                
                if (JBarray[1] == "No Microcystin Detected"){
                    self.loadingJBToxin.textColor = UIColor(red: 3/255, green: 161/255, blue: 0/255, alpha: 1)
                } else {
                    self.loadingJBToxin.textColor = UIColor.red
                }

                
                
                self.tableArray = JBarray
            }
            
            if let SLEarray = json["SLE"] as? [String] {
                print("----")
                self.loadingSLEBloom.text = SLEarray[0]
                
                if (SLEarray[0] == "No Chance Of Bloom"){
                    self.loadingSLEBloom.textColor = UIColor(red: 3/255, green: 161/255, blue: 0/255, alpha: 1)
                } else {
                    self.loadingSLEBloom.textColor = UIColor.red
                }
                
                self.loadingSLEToxin.text = SLEarray[1]
                
                if (SLEarray[1] == "No Microcystin Detected"){
                    self.loadingSLEToxin.textColor = UIColor(red: 3/255, green: 161/255, blue: 0/255, alpha: 1)
                } else {
                    self.loadingSLEToxin.textColor = UIColor.red
                }

                
                self.tableArray = SLEarray
            }
            
            if let NFarray = json["NF"] as? [String] {
                print("----")
                self.loadingNFBloom.text = NFarray[0]
                
                if (NFarray[0] == "No Chance Of Bloom"){
                    self.loadingNFBloom.textColor = UIColor(red: 3/255, green: 161/255, blue: 0/255, alpha: 1)
                } else {
                    self.loadingNFBloom.textColor = UIColor.red
                }
                
                self.loadingNFToxin.text = NFarray[1]
                
                if (NFarray[1] == "No Microcystin Detected"){
                    self.loadingNFToxin.textColor = UIColor(red: 3/255, green: 161/255, blue: 0/255, alpha: 1)
                } else {
                    self.loadingNFToxin.textColor = UIColor.red
                }

                
                self.tableArray = NFarray
            }
            
            if let MEarray = json["ME"] as? [String] {
                print("----")
                self.loadingMEBloom.text = MEarray[0]
                
                if (MEarray[0] == "No Chance Of Bloom"){
                    self.loadingMEBloom.textColor = UIColor(red: 3/255, green: 161/255, blue: 0/255, alpha: 1)
                } else {
                    self.loadingMEBloom.textColor = UIColor.red
                }
                
                self.loadingMEToxin.text = MEarray[1]
                
                if (MEarray[1] == "No Microcystin Detected"){
                    self.loadingMEToxin.textColor = UIColor(red: 3/255, green: 161/255, blue: 0/255, alpha: 1)
                } else {
                    self.loadingMEToxin.textColor = UIColor.red
                }

                
                self.tableArray = MEarray
            }
            
            if let SFarray = json["SF"] as? [String] {
                print("----")
                self.loadingSFBloom.text = SFarray[0]
                
                if (SFarray[0] == "No Chance Of Bloom"){
                    self.loadingSFBloom.textColor = UIColor(red: 3/255, green: 161/255, blue: 0/255, alpha: 1)
                } else {
                    self.loadingSFBloom.textColor = UIColor.red
                }
                
                self.loadingSFToxin.text = SFarray[1]
                
                if (SFarray[1] == "No Microcystin Detected"){
                    self.loadingSFToxin.textColor = UIColor(red: 3/255, green: 161/255, blue: 0/255, alpha: 1)
                } else {
                    self.loadingSFToxin.textColor = UIColor.red
                }

                
                self.tableArray = SFarray
            }
            
            if let SF2array = json["SF2"] as? [String] {
                print("----")
                self.loadingSF2Bloom.text = SF2array[0]
                
                if (SF2array[0] == "No Chance Of Bloom"){
                    self.loadingSF2Bloom.textColor = UIColor(red: 3/255, green: 161/255, blue: 0/255, alpha: 1)
                } else {
                    self.loadingSF2Bloom.textColor = UIColor.red
                }
                
                self.loadingSF2Toxin.text = SF2array[1]
                
                if (SF2array[1] == "No Microcystin Detected"){
                    self.loadingSF2Toxin.textColor = UIColor(red: 3/255, green: 161/255, blue: 0/255, alpha: 1)
                } else {
                    self.loadingSF2Toxin.textColor = UIColor.red
                }

                
                self.tableArray = SF2array
            }
            
            
            
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
            
        }
        
        task.resume()
        
    }
}
