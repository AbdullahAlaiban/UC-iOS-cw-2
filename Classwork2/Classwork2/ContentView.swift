//
//  ContentView.swift
//  Classwork2
//
//  Created by APPLE on 25/06/2022.
//

import SwiftUI

struct ContentView: View {
    @State var emoji = "MARK"
    
    var body: some View {
        
        
        VStack{
            
            Text("ما هو، المسار المفضل لديك ")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            
            Image(emoji)
            
            
            Text("Ios")
                .font(.system(size: 30))
                .frame(width: 200, height: 50)
                .background(.gray)
                .clipShape(Capsule())
               
            
                . onTapGesture {
                emoji = "IOS"

            }
            
            Text("GameDev")
                .font(.system(size: 30))
                .frame(width: 200, height: 50)
                .background(Color.red)
                .clipShape(Capsule())
            
                .onTapGesture {
            
                emoji = "unityy"
                }
            
            Text("Web")
                .font(.system(size: 30))
                .frame(width: 200, height: 50)
                .background(Color.blue)
                .clipShape(Capsule())

                . onTapGesture {
                    emoji = "WeB"}
            
            Text("Andriod")
                .font(.system(size: 30))
                .frame(width: 200, height: 50)
                .background(Color.green)
                .clipShape(Capsule())
            
                
                . onTapGesture {
                    emoji = "ANDRO"}

            
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
