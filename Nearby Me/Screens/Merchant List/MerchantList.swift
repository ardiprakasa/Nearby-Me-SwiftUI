//
//  MerchantList.swift
//  Nearby Me
//
//  Created by Hardian Prakasa on 22/07/19.
//  Copyright © 2019 DANA Indonesia. All rights reserved.
//

import SwiftUI

struct MerchantList: View {
    
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        NavigationView {
            
            List() {
                
                Toggle(isOn: $userData.showFavoritesOnly) {
                    Text("Filter Favorites")
                }
                
                ForEach(userData.merchantsData) { merchant in
                    if !self.userData.showFavoritesOnly || merchant.isFavorite {
                        NavigationLink(destination: MerchantDetailView(merchant: merchant)) {
                            MerchantRowView(merchant: merchant)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Nearby Me"))
        }
    }
}

#if DEBUG
struct MerchantList_Previews: PreviewProvider {
    static var previews: some View {
        MerchantList()
            .environmentObject(UserData())
    }
}
#endif
