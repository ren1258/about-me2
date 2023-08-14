//
//  ContentView.swift
//  about me2
//
//  Created by Karen Xu on 8/10/23.
//

import SwiftUI

struct ContentView: View {
    @State private var funFacts = false
    var body: some View {
        ZStack {
            Image("sky")
                .resizable(resizingMode: .stretch)
                        .edgesIgnoringSafeArea(.all)

//            Color(.systemYellow)
//                .ignoresSafeArea()
            VStack {
                
                Image("me")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .padding()
                Text("Karen Xu")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                Text("Here are some fun facts about me!")
                    .font(.title2)
                Button("Click here") {
                funFacts.toggle()
                        
                }
                .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.blue)
            
                if funFacts {
                    Text("I'm a rising sophomore")
                        .multilineTextAlignment(.center)
                    Text("I'm a sad middle child")
                        .multilineTextAlignment(.center)
                    Text("I love traveling, photography, art, and sleeping")
                        .multilineTextAlignment(.center)
                    Text("I love listening to Kpop and Taylor Swift")
                        .multilineTextAlignment(.center)
                    Text("I'm a foodie :)")
                        .multilineTextAlignment(.center)
                        
                }
                    
                    
            }
            .padding()
            .background(Rectangle() .foregroundColor(.white))   .cornerRadius(15)
                .shadow(radius: 15)
            .padding()
           
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
