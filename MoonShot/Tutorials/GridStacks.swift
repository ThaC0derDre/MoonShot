//
//  GridStacks.swift
//  MoonShot
//
//  Created by Andres Gutierrez on 4/4/22.
//

import SwiftUI

struct GridStacks: View {
    let layout = [
        GridItem(.fixed(80)),
        GridItem(.fixed(80)),
        GridItem(.fixed(80))
]
    
    var body: some View {
        ScrollView{
            LazyVGrid(columns: layout){
                ForEach(1..<1001){
                    Text("Item \($0)")
                }
            }
        }
    }
}


struct GridVTwo: View{
    let layout = [
        // adapt to view. Try Landscape mode! Try on smaller phone!
//        GridItem(.adaptive(minimum: 80))
        
        GridItem(.adaptive(minimum: 80, maximum: 90))
    ]
    var body: some View{
        ScrollView{
            LazyVGrid(columns: layout){
                ForEach(1..<1001){
                    Text("Item \($0)")
                }
            }
        }
    }
}

struct GridvThree: View {
    let layout = [
        GridItem(.adaptive(minimum: 80, maximum: 160))
    ]
    var body: some View {
        // just a reminder of using Horizontal stacks/scroll views
        ScrollView(.horizontal){
            //Notice 'rows', not columns.
            LazyHGrid(rows: layout) {
                ForEach(1..<1001){
                    Text("Item \($0)")
                }
            }
        }
    }
}



struct GridStacks_Previews: PreviewProvider {
    static var previews: some View {
        GridvThree()
    }
}
