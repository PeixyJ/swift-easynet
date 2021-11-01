//
//  Lesson4.swift
//  EasyNet
//
//  Created by peixinyi on 2021/11/1.
//

import SwiftUI

struct Lesson4: View {
    
    @State var countries = ["德国","美国","法国","俄罗斯","日本","中国","英国","意大利"]
    @State var currentCountries = Int.random(in: 0...2)
    @State var showAlert:Bool = false
    @State var title = ""
    @State var content = ""
        
    var body: some View {
        ZStack{
            LinearGradient(colors: [.blue,.green], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack{
                VStack(spacing:15){
                    Text("以下国家的旗帜是哪一个").foregroundColor(.white)
                    Text(countries[currentCountries]).foregroundColor(.white)
                    
                    ForEach(0..<3){num in
                        Button {
                            self.title = num == currentCountries ? "正确" : "失败"
                            self.content = num == currentCountries ? "小天才" : "臭傻比"
                            self.showAlert = true
                        } label: {
                            Image("\(countries[num])")
                                .clipShape(Capsule())
                                .overlay(Capsule().stroke(Color.black,lineWidth: 2))
                                .shadow(color: .black, radius: 2)
                        }
                    }
                }
                Spacer()
            }
        }
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text(title),
                message: Text(content),
                dismissButton: .default(Text("再来一次")){
                    self.countries.shuffle()
                    self.currentCountries = Int.random(in: 0...2)
                }
            )
        }
    }
}

struct Lesson4_Previews: PreviewProvider {
    static var previews: some View {
        Lesson4()
    }
}
