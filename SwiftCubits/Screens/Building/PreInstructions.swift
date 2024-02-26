//
//  PreInstructions.swift
//  SwiftCubits
//
//  Created by Arthur Chan on 2/25/24.
//
import SwiftUI
import SceneKit
import ARKit
import UIKit
import Foundation

struct PreInstructions: View{
    @State var primarySCNScene = SingleCubitView()
    
    
    var body: some View {
        VStack{
            VStack{
                Text("Heading")
                primarySCNScene
                    .frame(height:350)
            }
            .padding()
            HStack{
                Text("2")
            }
            .padding()
            HStack{
                Text("3")
            }
            .padding()
        }
        .padding()
    }
}

#Preview(){
    PreInstructions()
}
