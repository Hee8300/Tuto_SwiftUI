//
//  LandmarkDetail.swift
//  uiswi
//
//  Created by 홍태희 on 2021/09/27.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    var landmark : Landmark
    
    //where문 내부에 있는 코드는 뭘까? ( %0.id 어쩌고.. )
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        VStack {
            MapView(cordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges : .top)
                .frame(height : 300)
            
            CircleImage(image: landmark.image)
                .offset(y : -100)
                .padding(.bottom, -80)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                    .font(.title)
                    .foregroundColor(.primary)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
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
    static let modelData = ModelData()
    
    static var previews: some View {
        LandmarkDetail(landmark: ModelData().landmarks[0])
            .environmentObject(modelData)
    }
}
