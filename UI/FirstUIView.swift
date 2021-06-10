//
//  FirstUIView.swift
//  UI
//
//  Created by huahua on 2021/6/9.
//
import SwiftUI

struct FirstUIView: View {
    var body: some View {
        
        TabView{
            ListView()
                .tabItem {
                    Image(systemName: "list.number")
                    Text("注意事項")
                }
            ChoosenUIView()
                .tabItem {
                    Image(systemName: "gamecontroller")
                    Text("今日運勢")
                }
            ContentView()
                .tabItem {
                    Image(systemName: "person")
                    Text("耍廢當英雄")
                }
        }.accentColor(.black)
        
    }
}

struct FirstUIView_Previews: PreviewProvider {
    static var previews: some View {
        FirstUIView()
    }
}
