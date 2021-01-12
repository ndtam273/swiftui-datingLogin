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
                }.background(self.index == 0 ? Color.white : Color.clear)
                .clipShape(Capsule())
                
                Button(action: {
                    self.index = 1
                }){
                    Text("New")
                        .foregroundColor(self.index == 1 ? .black : .white)
                        .fontWeight(.bold)
                        .padding(.vertical, 10)
                        .frame(width: (UIScreen.main.bounds.width - 50) / 2)
                }.background(self.index == 1 ? Color.white : Color.clear)
                .clipShape(Capsule())
            }.background(Color.black.opacity(0.1))
            .clipShape(Capsule())
            .padding(.top, 25)
            Login()
        }
        .padding()
    }
}

struct Login: View {
    @State var mail = ""
    @State var pass = ""
    var body: some View {
        VStack {
            HStack(spacing: 15){
                Image(systemName: "envelope")
                    .foregroundColor(.black)
                TextField("Enter Email Address", text: self.$mail)
            }.padding(.vertical, 20)
            
            Divider()
            
            HStack(spacing: 20){
                Image(systemName: "lock")
                    .resizable()
                    .frame(width: 15, height: 18)
                    .foregroundColor(.black)
                SecureField("Enter Password", text: self.$pass)
                Button(action: {
                    
                }) {
                    Image(systemName: "eye")
                        .foregroundColor(.black)
                }
            }.padding(.vertical, 20)
            
          
            
            
        }
        .padding(.vertical)
        .padding(.horizontal, 20)
        .background(Color.white)
        .cornerRadius(10)
    }
}
