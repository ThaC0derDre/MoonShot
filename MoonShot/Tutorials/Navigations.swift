//
//  Navigations.swift
//  MoonShot
//
//  Created by Andres Gutierrez on 4/2/22.
//

import SwiftUI

struct NavigationsIntro: View {
    var body: some View {
        NavigationView{
            NavigationLink{
                Text("Detail View")
            } label: {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .padding()
            }
            .navigationTitle("SwiftUI")
        }
    }
}

struct NavIntroTwo: View {
    var body: some View{
        NavigationView{
            // Adding list will add Chevrons '>'
            List{
                ForEach(1..<101){ item in
                    NavigationLink{
                        Text("Detail \(item)")
                    }label: {
                        Text("Row \(item)")
                    }
                }
            }
            .navigationTitle("SwiftUI")
        }
    }
}

struct Navigations_Previews: PreviewProvider {
    static var previews: some View {
        NavIntroTwo()
    }
}
