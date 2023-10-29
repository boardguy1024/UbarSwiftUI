//
//  UberMapView.swift
//  UberSwiftUI
//
//  Created by paku on 2023/10/28.
//

import SwiftUI
import MapKit

struct UberMapView: UIViewRepresentable {

    let mapView = MKMapView()
    let locationManager = LocationManager()
    
    func makeUIView(context: Context) -> MKMapView {
        mapView.delegate = context.coordinator
        mapView.isRotateEnabled = false
        mapView.showsUserLocation = true
        mapView.userTrackingMode = .follow
        
        return mapView
    }
     
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
    }
}

extension UberMapView {
    class Coordinator: NSObject, MKMapViewDelegate {
        
        let parent: UberMapView
        
        init(parent: UberMapView) {
            self.parent = parent
        }
        
        // ユーザーの現在地が更新された時に呼ばれるメソッド
        func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
            
            // center:中心を定義。中心の位置は、更新された`userLocation`の緯度と経度を使用する
            let region = MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude),
                span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
            
            //地域を設定
            parent.mapView.setRegion(region, animated: true)
        }
    }
}
