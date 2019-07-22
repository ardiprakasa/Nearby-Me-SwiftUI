//
//  MerchantList.swift
//  Nearby Me
//
//  Created by Hardian Prakasa on 22/07/19.
//  Copyright © 2019 DANA Indonesia. All rights reserved.
//

import SwiftUI

struct MerchantList: View {
    
    @State var showFavoritesOnly = false
    
    var body: some View {
        NavigationView {
            
            List() {
                
                Toggle(isOn: $showFavoritesOnly) {
                                Text("Filter Favorites")
                            }
                
                ForEach(merchants) { merchant in
                    if !self.showFavoritesOnly || merchant.isFavorite {
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
    }
}
#endif
