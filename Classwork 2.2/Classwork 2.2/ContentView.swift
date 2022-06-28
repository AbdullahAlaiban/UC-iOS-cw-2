//
//  ContentView.swift
//  Classwork 2.2
//
//  Created by APPLE on 27/06/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var KD = ""
    
    var body: some View {
        ZStack{
            VStack{
                Spacer()
                
            Image("COIN3")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350, height: 250)
            }
            
        VStack{
            Spacer()
            Text("محول العملات  ")
                .font(.system(size: 35))
            
        
            
            TextField("العملة بالدينار ", text: $KD)
                .multilineTextAlignment(.center)
                .font(.system(size: 30))
            Spacer()
           
            
            
            HStack{
                Spacer()
                
                Image("United")
                    .resizable()
                    .frame(width: 65, height: 40)
                    .clipShape(Circle())
                Spacer()
                HStack{
                    Text("$")
                Text(String(format: "%.2f", ((Double(KD) ?? 0) * 3.28)))
                
                }
                Spacer()
            }
            
            HStack{
                Spacer()
                
                Image("Kingdom")
                    .resizable()
                    .frame(width: 65, height: 40)
                    .clipShape(Circle())
                Spacer()
                HStack{
                    Text("£")
                    Text(String(format: "%.2f", ((Double(KD) ?? 0) * 2.46)))
                
                }
                Spacer()
            }
            
            HStack{
                Spacer()
                
                Image("Euro")
                    .resizable()
                    .frame(width: 65, height: 40)
                    .clipShape(Circle())
                Spacer()
                HStack{
                    Text("€")
                    Text(String(format: "%.2f", ((Double(KD) ?? 0) * 2.70)))
                
                }
                Spacer()
                
            }
            Spacer()
            Spacer()
            Spacer()
            
            
        }
          
        }
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
