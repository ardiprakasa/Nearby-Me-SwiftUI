//
//  MerchantRowView.swift
//  Nearby Me
//
//  Created by Hardian Prakasa on 22/07/19.
//  Copyright © 2019 DANA Indonesia. All rights reserved.
//

import SwiftUI

struct MerchantRowView: View {
    
    var merchant: Merchant
    
    var body: some View {
        HStack {
            Image(merchant.imageName)
                .resizable()
                .frame(width: 50, height: 50, alignment: .center)
                .scaledToFit()
            
            Text(merchant.name)
            Spacer()
        }
    }
}

#if DEBUG
struct MerchantRowView_Previews: PreviewProvider {
    static var previews: some View {
        let merchants = MerchantsFactory().getMerchants()
        return MerchantRowView(merchant: merchants[0])
    }
}
#endif
