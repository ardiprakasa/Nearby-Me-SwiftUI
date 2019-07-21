//
//  ContentView.swift
//  Nearby Me
//
//  Created by Hardian Prakasa on 21/07/19.
//  Copyright © 2019 DANA Indonesia. All rights reserved.
//

import SwiftUI

struct MerchantDetailView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            
            RoundedImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Kopi Kenangan")
                    .font(.title)
                HStack {
                    Text("Capital Place")
                        .font(.subheadline)
                    Spacer()
                    Text("South Jakarta")
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
        MerchantDetailView()
    }
}
#endif
