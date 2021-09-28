//
//  ContentView.swift
//  uiswi
//
//  Created by 홍태희 on 2021/09/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        //ContentView 미리 보기를 업데이트
        ContentView()
            .environmentObject(ModelData())
    }
}
