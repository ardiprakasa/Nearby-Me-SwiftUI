//
//  MerchantDetailView.swift
//  Nearby Me
//
//  Created by Hardian Prakasa on 21/07/19.
//  Copyright © 2019 DANA Indonesia. All rights reserved.
//

import SwiftUI

struct MerchantDetailView: View {
    
    var merchant: Merchant
    
    var body: some View {
        VStack {
            MapView(coordinate: merchant.locationCoordinate)
                .frame(height: 300)
            
            RoundedImageView(image: Image(merchant.imageName))
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(merchant.name)
                    .font(.title)
                HStack {
                    Text(merchant.address)
                        .font(.subheadline)
                    Spacer()
                    Text(merchant.city)
                        .font(.subheadline)
                }
            }
            .padding()
            Spacer()
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MerchantDetailView(merchant: merchants[0])
    }
}
#endif
