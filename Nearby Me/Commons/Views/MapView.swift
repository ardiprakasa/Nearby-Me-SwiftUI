//
//  MapView.swift
//  Nearby Me
//
//  Created by Hardian Prakasa on 21/07/19.
//  Copyright © 2019 DANA Indonesia. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    var coordinate: CLLocationCoordinate2D
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ view: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.003, longitudeDelta: 0.003)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
    }

}

#if DEBUG
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: merchants[0].locationCoordinate)
    }
}
#endif
