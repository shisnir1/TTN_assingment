//
//  ButtonSwiftUIView.swift
//  6. Swift UI assignment
//
//  Created by Mohit Pareek  on 18/03/20.
//  Copyright © 2020 Mohit Pareek . All rights reserved.
//

import SwiftUI

struct ButtonSwiftUIView: View {
    var body : some View {
        Button(action: {}, label: {
            Text("Button")
                .foregroundColor(.purple)
        })
            .padding(.all, 20.0)
            .frame(width: 300.0)
            .background(Color.red)
            .cornerRadius(5)
            
    }
    
}

#if DEBUG
struct ButtonSwiftUIView_Previews : PreviewProvider {
    static var previews: some View {
        Group {
           ButtonSwiftUIView()
              .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
              .previewDisplayName("iPhone 8")
            
            ButtonSwiftUIView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 8 Plus"))
            .previewDisplayName("iPhone 8 Plus")
            
            ButtonSwiftUIView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
            .previewDisplayName("iPhone 11")

            ButtonSwiftUIView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro"))
            .previewDisplayName("iPhone 11 Pro")


           ButtonSwiftUIView()
              .previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro Max"))
              .previewDisplayName("iPhone 11 Pro Max")
        }
    }
}
#endif
