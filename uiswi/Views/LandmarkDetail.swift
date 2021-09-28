//
//  LandmarkDetail.swift
//  uiswi
//
//  Created by 홍태희 on 2021/09/27.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark : Landmark
    
    var body: some View {
        VStack {
            MapView(cordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges : .top)
                .frame(height : 300)
            
            CircleImage(image: landmark.image)
                .offset(y : -100)
                .padding(.bottom, -80)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                    .foregroundColor(.green)
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                        .foregroundColor(.blue)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                }
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                    .foregroundColor(.green)
                Text(landmark.description)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                
            }
            .padding()
            
            Spacer()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
