//
//  MKMapView.swift
//  AppleMVC
//

import MapKit

extension MKMapView {
    
    func setCenter(_ center: Coordinates, spanDelta: CLLocationDegrees) {
        var region = MKCoordinateRegion()
        region.center.latitude = center.latitude
        region.center.longitude = center.longitude
        region.span.latitudeDelta = spanDelta
        region.span.longitudeDelta = spanDelta
        setRegion(region, animated: false)
    }
    
}
