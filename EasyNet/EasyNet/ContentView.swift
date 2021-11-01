//
//  ContentView.swift
//  EasyNet
//
//  Created by peixinyi on 2021/10/31.
//

import SwiftUI

struct ContentView: View {
    
    private var clazz = ["Lesson0","Lesson1","Lesson2","Lesson3"]
    
    var body: some View {
        NavigationView{
            List{
                ForEach(clazz,id: \.self) {str in
                    Text(str)
                }
            }
            .navigationTitle("EasyNet")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
