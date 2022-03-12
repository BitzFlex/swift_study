//
//  ContentView.swift
//  DemoProject
//
//  Created by bhseong on 2022/03/07.
//

import SwiftUI

struct ContentView: View {
    var count = 10
    var textString = "Hello, World !!"
    @State private var to = true
    @State private var name = ""

    var body: some View {
        get {
            return VStack(spacing: 20) {
                Text(textString)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                    .badge(/*@START_MENU_TOKEN@*/"Label"/*@END_MENU_TOKEN@*/)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.orange/*@END_MENU_TOKEN@*/)
                
                EditButton()
                
                Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/, action: {print("Button Click")})
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/)

                ButtonSubView(name: $name).font(.largeTitle)
                
                
                Button(action: {}) {
                    Text("Click Me")
                }
                TextField("Enter name",text: $name)
                Text(name)
                
                Image(systemName: "wifi")
            }
        }

    }
}

struct ButtonSubView : View {
    @Binding var name : String
    
    var body : some View {
        HStack() {
            Button("Button A ") {
                
            }
            
            Text("Subview Text")
            Text(name)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
.previewInterfaceOrientation(.portraitUpsideDown)
            ContentView()
        }
    }
}
