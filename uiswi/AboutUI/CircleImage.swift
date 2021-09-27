//
//  CircleImage.swift
//  uiswi
//
//  Created by 홍태희 on 2021/09/27.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("flo")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 5)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
