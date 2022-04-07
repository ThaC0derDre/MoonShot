//
//  CrewMemberScrollView.swift
//  MoonShot
//
//  Created by Andres Gutierrez on 4/6/22.
//

import SwiftUI

struct CrewMemberScrollView: View {
    
    let crew: [CrewMember]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack{
                ForEach(crew, id: \.role){ member in
                    NavigationLink{
                        AstronautView(astronaut: member.astronaut)
                    } label: {
                        HStack{
                            Image(member.astronaut.id)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 104, height: 72)
                                .clipShape(Capsule())
                                .overlay(
                                    Capsule()
                                        .strokeBorder(.white, lineWidth: 1)
                                )
                            
                            VStack(alignment: .leading){
                                Text(member.astronaut.name)
                                    .font(.headline)
                                    .foregroundColor(.white)
                                
                                Text(member.role)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding(.horizontal)
                    }
                }
            }
        }
    }
}

struct CrewMemberScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
