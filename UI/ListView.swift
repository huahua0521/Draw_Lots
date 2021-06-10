//
//  ListView.swift
//  UI
//
//  Created by huahua on 2021/6/9.
//

import SwiftUI

struct ListView: View {
    var body: some View {
       
        let warnings = [
            Warning(hint: "人多戴口罩", image: "武漢肺炎預防1"),
            Warning(hint: "保持社交距離", image: "武漢肺炎預防2"),
            Warning(hint: "保持手部清潔", image: "武漢肺炎預防3"),
            Warning(hint: "出入實名制", image: "武漢肺炎預防4"),
            Warning(hint: "避免群聚", image: "武漢肺炎預防5"),
            Warning(hint: "使用75%酒精消毒隨身物品", image: "武漢肺炎預防6"),
            Warning(hint: "定期消毒環境", image: "武漢肺炎預防7"),
           
        ]
        
        
        VStack(spacing: 0.0) {
            HStack {
                Text("預防COVID-19")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.red)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.leading)
                Spacer()
            }
            
            HStack {
                Spacer()
                Text("防疫新生活運動！")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.blue)
                    .multilineTextAlignment(.trailing)
                    .padding([.bottom, .trailing])
            }
            
            List(warnings.indices) { item in
            
                HStack {
                    Image(warnings[item].image).resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100, alignment: .center)
                        .clipShape(Circle())
            
                    Text(warnings[item].hint)
                    Spacer()
                }
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

