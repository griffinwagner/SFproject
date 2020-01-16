//
//  ViewController.swift
//  Project02
//
//  Created by Sebastian Suchanowski on 28/04/2018.
//  Copyright © 2018 Synappse. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var mapPreviewImageView: UIImageView!
    @IBOutlet weak var Button: UIButton!
    @IBOutlet weak var ButtonLabel: UILabel!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var ButtonLabel2: UILabel!
    @IBOutlet weak var MLabel: UILabel!
    @IBOutlet weak var BLabel: UILabel!
    
    @IBOutlet weak var progress2: UIProgressView!
    @IBOutlet weak var progress: UIProgressView!
    
    // keep this somewhere else so it would not die with this View Controller
    // as it would lost its function
    private let imageCache = NSCache<NSString, UIImage>()
    private static let imageCacheKey: NSString = "CachedMapSnapshot" // this should be object specific name
    let buttonX = 20
    let buttonY = 160
    let buttonWidth = 374 //374
    let buttonHeight = 640
    

    override func viewDidLoad() {
        super.viewDidLoad()
        loadMapPreview()
        mapPreviewImageView.layer.cornerRadius=30;
        mapPreviewImageView.layer.borderWidth=0.0;
        mapPreviewImageView.layer.masksToBounds = true;
        
        Button.layer.cornerRadius=30;
        Button.layer.borderWidth=0.0;
        Button.layer.masksToBounds = true;
        
        Button2.layer.cornerRadius=30;
        Button2.layer.borderWidth=0.0;
        Button2.layer.masksToBounds = true;
        var sitesMicrocystin = ["FP", "JB", "SF"]
        var sitesBlooms = ["SF2"]
        

    
        if true {
            Button.backgroundColor = UIColor(red: 230/255, green: 0/255, blue: 0/255, alpha: 0.5)
            ButtonLabel.textColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
            
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
            
            
            ButtonLabel.text = "Microcystin Detected at Following Sites: \(listOfSitesMicrocystin)"
        } else {
            Button.backgroundColor = UIColor(red: 102/255, green: 250/255, blue: 51/255, alpha: 0.5)
        }
        
        if true {
            Button2.backgroundColor = UIColor(red: 230/255, green: 0/255, blue: 0/255, alpha: 0.5)
            ButtonLabel2.textColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
            
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
            
            
            ButtonLabel2.text = "Blooms Predicted in 4-7 Days at Following Sites: \(listOfSitesBlooms)"
        } else {
            Button2.backgroundColor = UIColor(red: 3/255, green: 161/255, blue: 0/255, alpha: 0.5)
            ButtonLabel2.textColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
            ButtonLabel2.text = "No Blooms Predicted Within the Next 4 to 7 Days"
        }
        
    }
    
        
        

    
    private func loadMapPreview() {
        if let cachedImage = cachedImage() {
            mapPreviewImageView.image = cachedImage
            return
        }
        
        activityIndicator.isHidden = false
        activityIndicator.startAnimating()
        
        let coords = CLLocationCoordinate2D(latitude: 27.2034, longitude: -80.2586)
        let distanceInMeters: Double = 10000
        
        let options = MKMapSnapshotOptions()
        options.region = MKCoordinateRegionMakeWithDistance(coords, distanceInMeters, distanceInMeters)
        options.size = mapPreviewImageView.frame.size
        
        let bgQueue = DispatchQueue.global(qos: .background)
        let snapShotter = MKMapSnapshotter(options: options)
        snapShotter.start(with: bgQueue, completionHandler: { [weak self] (snapshot, error) in
            guard error == nil else {
                return
            }
            
            if let snapShotImage = snapshot?.image, let coordinatePoint = snapshot?.point(for: coords) {
                UIGraphicsBeginImageContextWithOptions(snapShotImage.size, true, snapShotImage.scale)
                snapShotImage.draw(at: CGPoint.zero)
                // need to fix the point position to match the anchor point of pin which is in middle bottom of the frame
                
                let mapImage = UIGraphicsGetImageFromCurrentImageContext()
                if let unwrappedImage = mapImage {
                    self?.cacheImage(iamge: unwrappedImage)
                }
                DispatchQueue.main.async {
                    self?.mapPreviewImageView.image = mapImage
                    self?.activityIndicator.stopAnimating()
                    self?.activityIndicator.isHidden = true
                }
                UIGraphicsEndImageContext()
            }
        })
    }
    
    private func cacheImage(iamge: UIImage) {
        imageCache.setObject(iamge, forKey: ViewController.imageCacheKey)
    }
    
    private func cachedImage() -> UIImage? {
        return imageCache.object(forKey: ViewController.imageCacheKey)
    }
}
