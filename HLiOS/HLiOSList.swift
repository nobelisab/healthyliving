//
//  HLiOSList.swift
//  HLiOS
//
//  Created by Elisabeth Noble on 6/13/21.
//

import SwiftUI

struct HLiOSList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredHLiOS: [HLiOS] {
        modelData.hLiOS.filter { hLiOS in
            (!showFavoritesOnly || hLiOS.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List  {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                ForEach(filteredHLiOS) { hLiOS in
                NavigationLink(
                    destination: HLiOSDetail(hLiOS: hLiOS)) {
                    HLiOSRow(hLiOS: hLiOS)
            }
        }
    }
            .navigationTitle("Healthy Living Investments")
        }
    }
}
struct HLiOSList_Previews: PreviewProvider {
    static var previews: some View {
            HLiOSList()
                .environmentObject(ModelData())
    }
}

