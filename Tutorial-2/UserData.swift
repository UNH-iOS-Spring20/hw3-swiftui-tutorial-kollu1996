//
//  UserData.swift
//  Tutorial-2
//
//  Created by Sreenikhil Kollu on 2/23/20.
//  Copyright © 2020 Sreenikhil Kollu. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject  {
      @Published var showFavoritesOnly = false
     @Published var landmarks = landmarkData
}
