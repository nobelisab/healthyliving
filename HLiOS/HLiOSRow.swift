//
//  HLiOSRow.swift
//  HLiOS
//
//  Created by Elisabeth Noble on 6/13/21.
//

import SwiftUI

struct HLiOSRow: View {
    var hLiOS: HLiOS
    
    var body: some View {
        HStack {
            hLiOS.image
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(5)
            Text(hLiOS.name)
            
            Spacer()
            
            if hLiOS.isFavorite {
                Image(systemName: "star.fill")
                    .imageScale(.medium)
                    .foregroundColor(.yellow)
            }
            
        }
    }
    
}

struct HLiOSRow_Previews: PreviewProvider {
    static var hLiOS = ModelData().hLiOS
    
    static var previews: some View {
        Group {
            HLiOSRow(hLiOS: hLiOS[0])
            HLiOSRow(hLiOS: hLiOS[1])
    }
        .previewLayout(.fixed(width: 300, height: 70))
        
    }
}
