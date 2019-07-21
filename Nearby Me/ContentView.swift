//
//  ContentView.swift
//  Nearby Me
//
//  Created by Hardian Prakasa on 21/07/19.
//  Copyright © 2019 DANA Indonesia. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
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
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
