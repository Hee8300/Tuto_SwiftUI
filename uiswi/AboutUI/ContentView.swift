//
//  ContentView.swift
//  uiswi
//
//  Created by 홍태희 on 2021/09/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges : .top)
                .frame(height : 300)
            
            CircleImage()
                .offset(y : -100)
                .padding(.bottom, -80)
            
            VStack(alignment: .leading) {
                Text("Hello, SwiftUI!")
                    .font(.title)
                    .foregroundColor(.green)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                        .foregroundColor(.blue)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                }
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                    .foregroundColor(.green)
                Text("Destriptive text goes here")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                
            }
            .padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
