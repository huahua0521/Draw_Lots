//
//  ContentView.swift
//  UI
//
//  Created by huahua on 2021/6/9.
//

import SwiftUI

struct ContentView: View {
    
     @State  var isOn : Bool = true
@State var show = false
    var body: some View {

        ZStack {
       
            Image("1")
                .resizable()
                .scaledToFit()
            .shadow(radius: 10)
            .border(Color.gray, width: 30)
            .rotationEffect(Angle(degrees: 25))
            .rotation3DEffect(
                .degrees(50),
                axis: (x: 0.25, y: 1.9, z: 0.8))
                .padding()
            
            HStack {
                Text("全民防疫動起來,\n耍廢救地球")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.leading)
                    .padding(20.0)
                    .shadow(color: .black, radius: 5, x: 10, y: 5)
                    .offset(x: 50.0, y: 130.0    )
                
            }.padding()
        }
        .onTapGesture {
            show = true
        }
        .sheet(isPresented: $show, content: {
            ChoosenUIView()
        })
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .background(LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.blue]), startPoint: .leading, endPoint: .trailing))
            
    }
}
