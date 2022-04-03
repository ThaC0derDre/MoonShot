//
//  GeoReader.swift
//  MoonShot
//
//  Created by Andres Gutierrez on 4/2/22.
//

import SwiftUI

struct BeforeGeo: View {
    var body: some View {
        Image("hawaii")
            .resizable()
            .scaledToFill()
            .frame(width: 370, height: 500)
    }
}


struct GeoReader: View {
    var body: some View {
        //geo defaults topLeading
        GeometryReader{ geo in
            Image("hawaii")
                .resizable()
                .scaledToFill()
            // add the following to cover 80% percent of screen
                .frame(width: (geo.size.width * 0.8))
            // stack frames to center
                .frame(width: geo.size.width, height: geo.size.height)
        }
    }
}


struct GeoReader_Previews: PreviewProvider {
    static var previews: some View {
        GeoReader()
    }
}
