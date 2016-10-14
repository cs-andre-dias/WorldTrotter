//
//  MapViewController.swift
//  WorldTrotter
//
//  Created by Andre Dias on 07/10/16.
//  Copyright © 2016 Andre Dias. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController{
    
    var mapView: MKMapView!
    
    override func loadView() {
        mapView = MKMapView()
        
        view = mapView
        
        let segmentedControl = UISegmentedControl(items: ["Standart", "Hybrid", "Satellite"])
        segmentedControl.backgroundColor = UIColor.white.withAlphaComponent(0.5)
        segmentedControl.selectedSegmentIndex = 0
        
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentedControl)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
