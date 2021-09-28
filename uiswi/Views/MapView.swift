//
//  MapView.swift
//  uiswi
//
//  Created by 홍태희 on 2021/09/27.
//

import SwiftUI
import MapKit

struct MapView: View {
    var cordinate : CLLocationCoordinate2D
    
    //@State 속성을 사용하여 둘 이상의 보기에서 수정할 수 있는 앱의 데이터에 대한 출처를 설정할 수 있습니다.
    @State private var region = MKCoordinateRegion()
    
    var body: some View {
        //현재 좌표를 기준으로 영역의 계산을 트리거(?)
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(cordinate)
            }
    }
    
    //좌표 값을 기준으로 영역을 업데이트
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
           region = MKCoordinateRegion(
               center: coordinate,
               span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
           )
       }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(cordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
