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
    @State var primarySCNScene = SingleCubitView()
    
    
    var body: some View {
<<<<<<< HEAD
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
=======
        ZStack {
            GeometryReader{ geometry in
                VStack{
                    Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    Spacer()
                    Model()
                    Rectangle()
                        .foregroundColor(.gray)
                        .opacity(0.25)
                        .shadow(color:.black, radius: 3, x: 0, y:-1)
                    Text("Instructions")
                }
            }
        }.padding(.bottom, 55)
        
>>>>>>> main
    }
}

func testRender(){
    
}

#Preview {
    Instructions()
}
