//
//  LandmarkList.swift
//  uiswi
//
//  Created by 홍태희 on 2021/09/27.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            // 모델 데이터의 랜드마크 배열을 목록 이니셜라이저에 전달
            List(landmarks) { landmark in
                NavigationLink(destination : LandmarkDetail(landmark: landmark)) {
                    LandMarkLow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
