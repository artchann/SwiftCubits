//
//  Instructions.swift
//  SwiftCubits
//
//  Created by Wei Chen on 1/3/24.
//

import SwiftUI
import SceneKit
import ARKit
import UIKit

struct Instructions: View {
    //MARK: can use .init() here to load in an object file
    //@State var primarySCNView = PrimaryLayerView()
    //@State var primarySCNScene = PrimaryLayerView(scene: SCNScene())
    @State var primarySCNScene = PrimaryLayerView()
    
    
    var body: some View {
        VStack{
            VStack{
                Text("Heading")
                primarySCNScene
                    .frame(height:350)
            }
            .padding()
            HStack{
                Text("Pieces")
            }
            .padding()
            HStack{
                Text("Steps")
            }
            .padding()
        }
        .padding()
    }
}

func testRender(){
    
}

#Preview {
    Instructions()
}
