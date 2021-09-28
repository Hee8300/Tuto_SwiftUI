//
//  LandMark.swift
//  uiswi
//
//  Created by 홍태희 on 2021/09/27.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    //데이터에서 이미지 이름을 읽을 imageName 속성 추가
    private var imageName : String
    var image: Image {
        Image(imageName)
    }
    
    //JSON 데이터 구조의 저장소를 반영하는 중첩 coordinates 유형을 사용하여 구조에 coordinates 속성을 추가(?)
    private var coordinates: Coordinates
    //MapKit 프레임워크와 상호 작용하는 데 유용한 locationCoordinate 속성
    var locationCoordinate: CLLocationCoordinate2D {
            CLLocationCoordinate2D(
                latitude: coordinates.latitude,
                longitude: coordinates.longitude)
        }
    
        struct Coordinates: Hashable, Codable {
            var latitude: Double
            var longitude: Double
        }
}
