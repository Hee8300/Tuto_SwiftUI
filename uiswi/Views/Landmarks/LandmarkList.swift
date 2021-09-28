//
//  LandmarkList.swift
//  uiswi
//
//  Created by 홍태희 on 2021/09/27.
//

import SwiftUI

struct LandmarkList: View {
    //modelData property gets its value automatically..
    @EnvironmentObject var modelData: ModelData
    
    @State private var showFavoritesOnly = false
    
    //목록 필터링
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                // 모델 데이터의 랜드마크 배열을 목록 이니셜라이저에 전달
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink(destination : LandmarkDetail(landmark: landmark)) {
                        LandMarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
