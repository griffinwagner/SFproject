//
//  CommunityMapsTableViewController.swift
//  Project02
//
//  Created by Griffin Wagner on 1/14/20.
//  Copyright © 2020 Synappse. All rights reserved.
//

import UIKit
import MapKit


class CommunityMapsTableViewController: UITableViewController {

    @IBOutlet weak var mapViewMicro: MKMapView!
    @IBOutlet weak var MicroLabel: UILabel!
    @IBOutlet weak var BloomLabel: UILabel!
    @IBOutlet weak var mapViewBloom: MKMapView!
    @IBOutlet weak var MicroList: UILabel!
    @IBOutlet weak var BloomList: UILabel!
    
    var sitesMicrocystin = ["FP", "JB", "SF"]
    var sitesBlooms = ["SF2"]


    override func viewDidLoad() {
        super.viewDidLoad()
        mapViewMicro.layer.cornerRadius=30;
        mapViewMicro.layer.borderWidth = 2.0;
        mapViewBloom.layer.cornerRadius=30;
        mapViewBloom.layer.borderWidth = 2.0;

        
        if sitesMicrocystin.count > 0  {
            MicroLabel.text = "Detected Microcystin"
            
            let center = CLLocationCoordinate2D(latitude: 27.375569444444442, longitude: -80.3)
            let span = MKCoordinateSpan(latitudeDelta: 0.62, longitudeDelta: 0.25)
            let region = MKCoordinateRegion(center: center, span: span)
            mapViewMicro.setRegion(region, animated: true)

            var listOfSitesMicrocystin = ""
            
            for i in 0..<sitesMicrocystin.count {
                if sitesMicrocystin.count == 1 {
                    listOfSitesMicrocystin = sitesMicrocystin[i]
                } else {
                    if i + 1 == sitesMicrocystin.count {
                        listOfSitesMicrocystin = listOfSitesMicrocystin + " and " + sitesMicrocystin[i]
                    } else {
                        listOfSitesMicrocystin = listOfSitesMicrocystin + sitesMicrocystin[i] + ", "
                    }
                    
                }
            }
            MicroList.text = listOfSitesMicrocystin
            
            
            for i in 0..<sitesMicrocystin.count {
                var annot = MKPointAnnotation()
                annot.coordinate = makeMap(site: sitesMicrocystin[i])
                annot.title = sitesMicrocystin[i]
                mapViewMicro.addAnnotation(annot)
            }

        } else {
            MicroLabel.text = "No Detected Microcystin"
        }
        
        if sitesBlooms.count > 0  {
            BloomLabel.text = "Predicted Blooms"
            
            let center = CLLocationCoordinate2D(latitude: 27.375569444444442, longitude: -80.3)
            let span = MKCoordinateSpan(latitudeDelta: 0.62, longitudeDelta: 0.25)
            let region = MKCoordinateRegion(center: center, span: span)
            mapViewBloom.setRegion(region, animated: true)
            
            
            for i in 0..<sitesBlooms.count {
                var annot = MKPointAnnotation()
                annot.coordinate = makeMap(site: sitesBlooms[i])
                annot.title = sitesBlooms[i]
                mapViewBloom.addAnnotation(annot)
                
                
            }
            
            var listOfSitesBlooms = ""
            
            for i in 0..<sitesBlooms.count {
                if sitesBlooms.count == 1 {
                    listOfSitesBlooms = sitesBlooms[i]
                } else {
                    if i + 1 == sitesBlooms.count {
                        listOfSitesBlooms = listOfSitesBlooms + " and " + sitesBlooms[i]
                    } else {
                        listOfSitesBlooms = listOfSitesBlooms + sitesBlooms[i] + ", "
                    }
                    
                }
            }
            
            
            BloomList.text = listOfSitesBlooms

            
        } else {
            BloomLabel.text = "No Predicted Blooms"
        }
        
        

    }
    
    func makeMap(site: String) -> CLLocationCoordinate2D{
        if site == "SB" {
            return CLLocationCoordinate2D(latitude: 27.839125,longitude: -80.47081944444444)
        } else if site == "VB" {
            return CLLocationCoordinate2D(latitude: 27.590141666666664,longitude: -80.35523888888888)
        } else if site == "LP" {
            return CLLocationCoordinate2D(latitude: 27.53500000,longitude: -80.34217888888889)
        } else if site == "FP" {
            return CLLocationCoordinate2D(latitude: 27.475569444444442,longitude: -80.3266)
        } else if site == "JB" {
            return CLLocationCoordinate2D(latitude: 27.224413888888886,longitude: -80.20233888888889)
        } else if site == "SLE" {
            return CLLocationCoordinate2D(latitude: 27.164975,longitude: -80.17184722222223)
        } else if site == "NF" {
            return CLLocationCoordinate2D(latitude: 27.21002222222222,longitude: -80.269175)
        } else if site == "ME" {
            return CLLocationCoordinate2D(latitude: 27.208949999999998,longitude: -80.24796944444445)
        } else if site == "SF" {
            return CLLocationCoordinate2D(latitude: 27.18815,longitude: -80.261425)
        } else if site == "SF2" {
            return CLLocationCoordinate2D(latitude: 27.114194444444447,longitude: -80.28286111111112)
        } else {
            return CLLocationCoordinate2D(latitude: 27.114194444444447,longitude: -80.28286111111112)
        }
        
        
    }



}
