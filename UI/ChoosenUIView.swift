//
//  ChoosenUIView.swift
//  UI
//
//  Created by huahua on 2021/6/10.
//

import SwiftUI

struct ChoosenUIView: View {
   
    @State var number = 0
    @State var rangeNumber  = 0.0
    let myArray = ["大吉 ","小吉","吉","普普","兇","加油好嗎"]
  
    var body: some View {
        VStack {
            VStack {
                VStack {
                    Text("今日運勢")
                        .font(.title)
                        .accentColor(.orange)
                        .padding()
                    
                    Button(action: {
                        number = Int(arc4random_uniform(UInt32(myArray.count)))

                    }, label: {
                        VStack {
                            Text("☞ Click For Fun")
                                .fontWeight(.semibold)
                                .foregroundColor(Color.black)
                        }
                    }).padding()
                }
                
                VStack {
                    Text(myArray[number])
                        .fontWeight(.bold)
                        .foregroundColor(Color.orange)
                        .multilineTextAlignment(.center)
                        .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                        
                    Image("\(number)")
                        .resizable()
                        .scaledToFit()
                        .offset(x: CGFloat(rangeNumber * 280),
                                y: CGFloat(rangeNumber))
                }
            }
       
            Slider(value: $rangeNumber, in: 0...1, minimumValueLabel: Text("HI"), maximumValueLabel: Text("Bye")) {
            }.padding()
            .accentColor(.gray)
                
        }
    }
    
}

struct ChoosenUIView_Previews: PreviewProvider {
    static var previews: some View {
        ChoosenUIView()
    }
}
