//
//  LandmarkRow.swift
//  Tutorial-2
//
//  Created by Sreenikhil Kollu on 2/23/20.
//  Copyright © 2020 Sreenikhil Kollu. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
       var landmark: Landmark
    var body: some View {
        HStack {
            landmark.image
             .resizable()
             .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .imageScale(.medium)
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
         LandmarkRow(
            landmark: landmarkData[2]
        ).previewLayout(.fixed(width: 300, height: 70))
    }
}
