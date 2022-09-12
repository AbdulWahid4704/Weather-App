//
//  LocationService.swift
//  WeatherApp(2)
//
//  Created by Rusaab Abdul Wahid on 11/09/2022.
//

import Foundation
import CoreLocation

protocol LocationServiceDelegate {
    
    func didGetCity(_ city: String?)
    
}

class LocationService: NSObject, CLLocationManagerDelegate {
    
    var locationManager = CLLocationManager()
    
    var delegate: LocationServiceDelegate?
    
    @Published var authorizationState = CLAuthorizationStatus.notDetermined
    
    override init() {
        super.init()
        
        locationManager.delegate = self
    }
    
    func requestGeolocationPermission () {
        
        // A location manager method which prompts the user to give permission to the app to get the usr's location
        locationManager.requestWhenInUseAuthorization()
        
    }
    
    // MARK: - Location Manager Delegate Methods
    // The delegate method which the location manager calls whenever the authorization changes from not determined
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        
        // update the authorization state property to the authorization status that the loacation manager brings back
        authorizationState = locationManager.authorizationStatus
        
        // Check authorization status
        if locationManager.authorizationStatus == .authorizedWhenInUse || locationManager.authorizationStatus == .authorizedAlways {
            
            // If authorized then start updating location
            locationManager.startUpdatingLocation()
            
        } else if locationManager.authorizationStatus == .denied {
            // Dont do anything
        }
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        // Access the first location from the locations passed in by the manager
        let userLocation = locations.first
        
        // check If the userlocation is not nil cos the first method on an array could return nil:
        if let userLocation = userLocation {
            
            // Stop updating the location
            locationManager.stopUpdatingLocation()
            
            // Get the placemark of the user by passing the user location object to the geo coder's method which would decode the location as a placemark and present it as a paramter for the closure
            CLGeocoder().reverseGeocodeLocation(userLocation) { placemarks, error in
                
                // Check the method has not returned nil, and it has returned placemarks
                if error == nil && placemarks != nil {
                    self.delegate?.didGetCity(placemarks?.first?.locality)
                    
                }
                
            }
            
        }
        
    }
    
}
