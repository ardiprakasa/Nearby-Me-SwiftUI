//
//  UserData.swift
//  Nearby Me
//
//  Created by Hardian Prakasa on 23/07/19.
//  Copyright © 2019 DANA Indonesia. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: BindableObject {
    
    let willChange = PassthroughSubject<Void, Never>()
    
    var showFavoritesOnly = false {
        willSet {
            willChange.send()
        }
    }
    
    var merchantsData = merchants {
        willSet {
            willChange.send()
        }
    }
}
