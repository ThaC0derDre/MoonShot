//
//  LazyNScrollViews.swift
//  MoonShot
//
//  Created by Andres Gutierrez on 4/2/22.
//

import SwiftUI

struct CustomText: View{
    let text: String
    
    var body: some View{
        Text(text)
    }
    
    init(_ text: String){
        print("CustomText created")
        self.text   = text
    }
}


struct LazyNScrollViews: View {
    var body: some View {
        ScrollView{
            LazyVStack(spacing: 10){
                ForEach(0..<100){
                    CustomText("Item at \($0)")
                }
            }
        }
    }
}


struct LazyHScrollView: View {
    var body: some View{
        ScrollView(.horizontal){
            LazyHStack(spacing: 10) {
                ForEach(0..<100){
                    CustomText("New Item at : \($0)")
                }
            }
        }
    }
}

struct LazyNScrollViews_Previews: PreviewProvider {
    static var previews: some View {
        LazyNScrollViews()
    }
}
