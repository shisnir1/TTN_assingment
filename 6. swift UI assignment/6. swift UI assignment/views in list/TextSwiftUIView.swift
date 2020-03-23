//
//  TextSwiftUIView.swift
//  6. Swift UI assignment
//
//  Created by Mohit Pareek  on 18/03/20.
//  Copyright © 2020 Mohit Pareek . All rights reserved.
//

import SwiftUI

struct TextSwiftUIView: View {
    var body : some View {
        Text("this is a text which says blah blah blah blah blah")
        .font(.largeTitle)
        .fontWeight(.bold)
        .foregroundColor(.red)
        .multilineTextAlignment(.center)
        .padding(.all, 10.0)
        .lineLimit(nil)
    }
}

#if DEBUG
struct TextSwiftUIView_Previews : PreviewProvider {
    static var previews: some View {
        Group {
           TextSwiftUIView()
              .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
              .previewDisplayName("iPhone 8")
            
            TextSwiftUIView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 8 Plus"))
            .previewDisplayName("iPhone 8 Plus")
            
            TextSwiftUIView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
            .previewDisplayName("iPhone 11")

            TextSwiftUIView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro"))
            .previewDisplayName("iPhone 11 Pro")


           TextSwiftUIView()
              .previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro Max"))
              .previewDisplayName("iPhone 11 Pro Max")
        }

    }
}
#endif
