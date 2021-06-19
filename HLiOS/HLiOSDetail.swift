//
//  HLiOSDetail.swift
//  HLiOS
//
//  Created by Elisabeth Noble on 6/13/21.
//

import SwiftUI

struct HLiOSDetail: View {
    @EnvironmentObject var modelData: ModelData
    var hLiOS: HLiOS
    
    var hLiOSIndex: Int {
        modelData.hLiOS.firstIndex(where: { $0.id == hLiOS.id })!
    }
    
    var body: some View {
        ScrollView {
            MapView(coordinate: hLiOS.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 200)
            
            CircleImage(image: hLiOS.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(hLiOS.name)
                        .font(.title)
                        .foregroundColor(.primary)
                    FavoriteButton(isSet: $modelData.hLiOS[hLiOSIndex].isFavorite)
                }
                
                HStack {
                    Text(hLiOS.name)
                    Spacer()
                    Text(hLiOS.artist)
            }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About \(hLiOS.name)")
                    .font(.title2)
                Text(hLiOS.description)
        }
        .padding()
    }
        .navigationTitle(hLiOS.name)
        .navigationBarTitleDisplayMode(.inline)
  }
}

struct HLiOSDetail_Previews: PreviewProvider {
    static var previews: some View {
        HLiOSDetail(hLiOS: ModelData().hLiOS[0])
    }
}
