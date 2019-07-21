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
        
        let content = Group {
            MerchantRowView(merchant: merchants[0])
            MerchantRowView(merchant: merchants[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
        
        return content
    }
}
#endif
