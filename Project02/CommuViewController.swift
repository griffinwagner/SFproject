//
//  CommuViewController.swift
//  Project02
//
//  Created by Griffin Wagner on 1/14/20.
//  Copyright © 2020 Synappse. All rights reserved.
//

import UIKit
import MapKit

class CommuViewController: UIViewController {

    @IBOutlet weak var buttonForSubmit: UIButton!
//    @IBOutlet weak var titleText: UILabel!
//    @IBOutlet weak var bodyText: UILabel!
//    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonForSubmit.layer.cornerRadius=30;
        buttonForSubmit.layer.borderWidth = 2.0;
        
        var sitesMicrocystin = ["FP", "JB", "ME", "SF"]
        var sitesBlooms = [String]()
        
        var title = ""
        var body = ""
        
        //print(sitesBlooms.count)

        
//        mapView.mapType = MKMapType.satellite
//        let location = CLLocationCoordinate2D(latitude: 27.21002222222222,longitude: -80.269175)
//        let span = MKCoordinateSpan(latitudeDelta: 0.075, longitudeDelta: 0.075)
//        let region = MKCoordinateRegion(center: location, span: span)
//        mapView.setRegion(region, animated: true)
//        let annotation = MKPointAnnotation()
//        annotation.coordinate = location
//        annotation.title = "SLE-NF"
//        annotation.subtitle = "North Fork"
//        mapView.addAnnotation(annotation)
//
//        let center = CLLocationCoordinate2D(latitude: 27.375569444444442, longitude: -80.3)
//        let span = MKCoordinateSpan(latitudeDelta: 1.2, longitudeDelta: 0.25)
//        let region = MKCoordinateRegion(center: center, span: span)
//
//
//        for i in 0..<sitesMicrocystin.count {
//            if sitesMicrocystin.count == 1 {
//                listOfSitesMicrocystin = sitesMicrocystin[i]
//            } else {
//                if i + 1 == sitesMicrocystin.count {
//                    listOfSitesMicrocystin = listOfSitesMicrocystin + " and " + sitesMicrocystin[i]
//                } else {
//                    listOfSitesMicrocystin = listOfSitesMicrocystin + sitesMicrocystin[i] + ", "
//                }
//
//            }
//        }


        // Do any additional setup after loading the view.
        
//        titleText.text = title
//        bodyText.text = body
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
