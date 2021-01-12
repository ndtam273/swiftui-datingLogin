//
//  ContentView.swift
//  Dating Login
//
//  Created by TAM NGUYEN DUC on 1/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: .init(colors: [Color("Color"), Color("Color1"), Color("Color2")]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            Home()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home: View {
    @State var index = 0
    var body: some View {
        VStack{
            Image("logo")
                .resizable()
                .frame(width: 200, height: 180)
            HStack{
                Button(action: {
                    self.index = 0
                }){
                    Text("Existing")
                        .foregroundColor(self.index == 0 ? .black : .white)
                        .fontWeight(.bold)
                        .padding(.vertical, 10)
                        .frame(width: (UIScreen.main.bounds.width - 50) / 2)
                }.background(Color.white)
                .clipShape(Capsule())
            }
        }
    }
}
