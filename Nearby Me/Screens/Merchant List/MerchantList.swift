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
        List {
            MerchantRowView(merchant: merchants[0])
            MerchantRowView(merchant: merchants[1])
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
