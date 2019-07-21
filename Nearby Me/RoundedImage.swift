//
//  RoundedImage.swift
//  Nearby Me
//
//  Created by Hardian Prakasa on 21/07/19.
//  Copyright © 2019 DANA Indonesia. All rights reserved.
//

import SwiftUI

struct RoundedImage: View {
    var body: some View {
        Image("kopiKenangan")
            .resizable()
            .frame(width: 300, height: 300, alignment: .center)
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

#if DEBUG
struct RoundedImage_Previews: PreviewProvider {
    static var previews: some View {
        RoundedImage()
    }
}
#endif
