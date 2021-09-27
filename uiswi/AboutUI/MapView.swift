//
//  MapView.swift
//  uiswi
//
//  Created by 홍태희 on 2021/09/27.
//

import SwiftUI
import MapKit

struct MapView: View {
    //@State 속성을 사용하여 둘 이상의 보기에서 수정할 수 있는 앱의 데이터에 대한 출처를 설정할 수 있습니다.
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    
    var body: some View {
        //상태 변수 앞에 $를 붙이면 기본 값에 대한 참조와 같은 바인딩을 전달합니다.
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
