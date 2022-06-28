//
//  ContentView.swift
//  Classwork3
//
//  Created by APPLE on 27/06/2022.
//

import SwiftUI

struct ContentView: View {
    @State var  myGrade = ""
    @State var result = ""
    var body: some View {
        ZStack{
            Image("green")
                .resizable()
                .ignoresSafeArea()
                
        VStack{
            
    
            Text("حاسبة الدرجات ")
                .font(.system(size: 40))
            
            Image("Calculator")
                .resizable()
                .frame(width: 200, height: 200)
                
        TextField("ادخل الدرجات" , text: $myGrade)
                .foregroundColor(Color.black)
                .multilineTextAlignment(.center)
                .background(Color.white)
                .font(.system(size: 30))
                .frame(width: 350, height: 40)
            
            
                
            
                
            
            Text("احسب درجتي")
                .frame(width: 200, height: 45)
                .background(Color.yellow)
                .clipShape(Capsule())
                .onTapGesture {
                if Int(myGrade)! >= 90{
                    result = "امتياز"
                }
                else if Int(myGrade)! >= 80 && Int(myGrade)! <= 89 {
                    result = "جيد جدا"}
                    else if Int(myGrade)! >= 70 && Int(myGrade)! <= 79 {
                        result = "جيد"}
                    else if Int(myGrade)! >= 60 && Int(myGrade)! <= 69 {
                        result = "مقبول"}
                    else{
                        result = "راسب"
                    }
                    
                    
                }
            
            
            Text(result)
            
            }
        }
                
        }
        
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
