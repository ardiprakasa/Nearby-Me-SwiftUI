//
//  MerchantDetailView.swift
//  Nearby Me
//
//  Created by Hardian Prakasa on 21/07/19.
//  Copyright © 2019 DANA Indonesia. All rights reserved.
//

import SwiftUI

struct MerchantDetailView: View {
    
    @EnvironmentObject var userData: UserData
    
    var merchant: Merchant
    
    var merchantIndex: Int {
        userData.merchantsData.firstIndex(where: { $0.id == merchant.id})!
    }
    
    var body: some View {
        VStack {
            MapView(coordinate: merchant.locationCoordinate)
                .frame(height: 300)
            
            RoundedImageView(image: Image(merchant.imageName))
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(merchant.name)
                        .font(.title)
                    
                    Button(action: {
                        self.userData.merchantsData[self.merchantIndex].isFavorite.toggle()
                    }) {
                        if self.userData.merchantsData[self.merchantIndex].isFavorite {
                            Image(systemName: "star.fill")
                                .foregroundColor(Color.yellow)
                        } else {
                            Image(systemName: "star.fill")
                                .foregroundColor(Color.gray)
                        }
                    }
                }
                
                
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
            .environmentObject(UserData())
    }
}
#endif
