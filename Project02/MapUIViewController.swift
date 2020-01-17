//
//  MapUIViewController.swift
//  TestCode
//
//  Created by Griffin Wagner on 1/7/19.
//  Copyright © 2019 Griffin Wagner. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation



class MapUIViewController: UIViewController {
    
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.last{
            let center = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
            let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
            self.mapView.setRegion(region, animated: true)
        }
    }
    
    @IBOutlet weak var box: UIView!
    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        box.layer.cornerRadius=30;
        box.layer.borderWidth=0.0;
        box.layer.masksToBounds = true;
        
        mapView.mapType = MKMapType.satellite
        let LPlocation = CLLocationCoordinate2D(latitude: 27.53500000,longitude: -80.34217888888889)
        let FPlocation = CLLocationCoordinate2D(latitude: 27.475569444444442,longitude: -80.3266)
        let center = CLLocationCoordinate2D(latitude: 27.475569444444442, longitude: -80.3)
        let span = MKCoordinateSpan(latitudeDelta: 0.9, longitudeDelta: 0.25)
        let region = MKCoordinateRegion(center: center, span: span)
        let SFlocation = CLLocationCoordinate2D(latitude: 27.18815,longitude: -80.261425)
        let SBlocation = CLLocationCoordinate2D(latitude: 27.839125,longitude: -80.47081944444444)
        let NFlocation = CLLocationCoordinate2D(latitude: 27.21002222222222,longitude: -80.269175)
        let SLElocation = CLLocationCoordinate2D(latitude: 27.164975,longitude: -80.17184722222223)
        let VBlocation = CLLocationCoordinate2D(latitude: 27.590141666666664,longitude: -80.35523888888888)
        let MElocation = CLLocationCoordinate2D(latitude: 27.208949999999998,longitude: -80.24796944444445)
        let JBlocation = CLLocationCoordinate2D(latitude: 27.224413888888886,longitude: -80.20233888888889)
        let SF2location = CLLocationCoordinate2D(latitude: 27.114194444444447,longitude: -80.28286111111112)
        
        mapView.setRegion(region, animated: true)
        let LPannotation = MKPointAnnotation()
        LPannotation.coordinate = LPlocation
        LPannotation.title = "IRL-LP"
        LPannotation.subtitle = "LakeWood Park"

        
        let FPannotation = MKPointAnnotation()
        FPannotation.coordinate = FPlocation
        FPannotation.title = "IRL-FP"
        FPannotation.subtitle = "Fort Pierce"
        
        let SFannotation = MKPointAnnotation()
        SFannotation.coordinate = SFlocation
        SFannotation.title = "SLE-SF"
        SFannotation.subtitle = "South Fork"
        
        let SBannotation = MKPointAnnotation()
        SBannotation.coordinate = SBlocation
        SBannotation.title = "IRL-SB"
        SBannotation.subtitle = "Sebastion"
        
        let NFannotation = MKPointAnnotation()
        NFannotation.coordinate = NFlocation
        NFannotation.title = "SLE-NF"
        NFannotation.subtitle = "North Fort Pierce"
        
        let SLEannotation = MKPointAnnotation()
        SLEannotation.coordinate = SLElocation
        SLEannotation.title = "IRL-SLE"
        SLEannotation.subtitle = "St. Lucie Estuary"
        
        let VBannotation = MKPointAnnotation()
        VBannotation.coordinate = VBlocation
        VBannotation.title = "IRL-VB"
        VBannotation.subtitle = "Vero Beach"
        
        let MEannotation = MKPointAnnotation()
        MEannotation.coordinate = MElocation
        MEannotation.title = "SLE-ME"
        MEannotation.subtitle = "St. Lucie Estuary"
        
        let JBannotation = MKPointAnnotation()
        JBannotation.coordinate = JBlocation
        JBannotation.title = "IRL-JB"
        JBannotation.subtitle = "Jensen Beach"
        
        let SF2annotation = MKPointAnnotation()
        SF2annotation.coordinate = SF2location
        SF2annotation.title = "SLE-SF2"
        SF2annotation.subtitle = "South Fork 2"
        
        
        mapView.addAnnotation(LPannotation)
        mapView.addAnnotation(FPannotation)
        mapView.addAnnotation(SFannotation)
        mapView.addAnnotation(SBannotation)
        mapView.addAnnotation(NFannotation)
        mapView.addAnnotation(SLEannotation)
        mapView.addAnnotation(VBannotation)
        mapView.addAnnotation(MEannotation)
        mapView.addAnnotation(JBannotation)
        mapView.addAnnotation(SF2annotation)

        
        
        // Do any additional setup after loading the view.
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
