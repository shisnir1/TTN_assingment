//
//  ContentView.swift
//  6. Swift UI assignment
//
//  Created by Shishir Singh  on 17/03/20.
//  Copyright © 2020 Shishir Singh . All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            
            List {
                Section(header: Text("Elements")){
                    
                    NavigationLink(destination: ImageSwiftUIView()){
                        Text("Image")
                        
                    }
                    
                    NavigationLink(destination: TextSwiftUIView()){
                        Text("Text")
                    }
                    
                    NavigationLink(destination: VerticalStackSwiftUIView()){
                        Text("Vertical stack")
                    }
                    
                    NavigationLink(destination: HorizontalStackSwiftUIView()){
                        Text("Horizontal stack")
                    }
                    
                    NavigationLink(destination: ButtonSwiftUIView()){
                        Text("Button")
                    }
                    
                    NavigationLink(destination: PickerSwiftUIView()){
                        Text("Picker")
                    }
                    
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
           ContentView()
              .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
              .previewDisplayName("iPhone 8")
            
            ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 8 Plus"))
            .previewDisplayName("iPhone 8 Plus")
            
            ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
            .previewDisplayName("iPhone 11")

            ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro"))
            .previewDisplayName("iPhone 11 Pro")


           ContentView()
              .previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro Max"))
              .previewDisplayName("iPhone 11 Pro Max")
        }
    }
}
