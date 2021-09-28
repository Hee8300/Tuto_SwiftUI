//
//  LandMarkLow.swift
//  uiswi
//
//  Created by 홍태희 on 2021/09/27.
//

import SwiftUI

struct LandMarkLow: View {
    var landmark : Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            
            Spacer()
        }
    }
}

struct LandMarkLow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandMarkLow(landmark: landmarks[0])
            LandMarkLow(landmark: landmarks[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
