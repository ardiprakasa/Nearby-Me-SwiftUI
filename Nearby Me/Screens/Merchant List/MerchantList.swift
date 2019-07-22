//
//  MerchantList.swift
//  Nearby Me
//
//  Created by Hardian Prakasa on 22/07/19.
//  Copyright © 2019 DANA Indonesia. All rights reserved.
//

import SwiftUI

struct MerchantList: View {
    
    var body: some View {
        NavigationView {
            List(merchants) { merchant in
                NavigationLink(destination: MerchantDetailView()) {
                    MerchantRowView(merchant: merchant)
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
