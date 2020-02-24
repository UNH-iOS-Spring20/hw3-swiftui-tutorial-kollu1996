//
//  LandmarkList.swift
//  Tutorial-2
//
//  Created by Sreenikhil Kollu on 2/23/20.
//  Copyright © 2020 Sreenikhil Kollu. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
      @EnvironmentObject var userData: UserData
    
    var body: some View {
        NavigationView{
        List {
            
           Toggle(isOn: $userData.showFavoritesOnly) {
           Text("Favorites only")
            
        }
            ForEach(userData.landmarks){ landmark in
                if !self.userData.showFavoritesOnly || landmark.isFavorite{
                       NavigationLink(destination: ContentView(landmark: landmark)){
                       LandmarkRow(landmark: landmark)
                       }
                       }
                   }
        }
        .navigationBarTitle(Text("Landmarks"))
        }
  }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
            LandmarkList()
         .environmentObject(UserData())
    }
}
