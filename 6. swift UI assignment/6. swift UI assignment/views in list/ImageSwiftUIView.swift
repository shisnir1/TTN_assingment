//
//  ImageSwiftUIView.swift
//  6. Swift UI assignment
//
//  Created by Mohit Pareek  on 18/03/20.
//  Copyright © 2020 Mohit Pareek . All rights reserved.
//

import SwiftUI

struct ImageSwiftUIView : View {
    var body: some View {
        Image("1200px-SNice.svg")
        .resizable()
        .frame(width: 300.0, height: 300.0)
        
    }
    
}

#if DEBUG
struct ImageSwiftUIView_Previews : PreviewProvider {
    static var previews: some View {
        Group {
           ImageSwiftUIView()
              .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
              .previewDisplayName("iPhone 8")
            
            ImageSwiftUIView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 8 Plus"))
            .previewDisplayName("iPhone 8 Plus")
            
            ImageSwiftUIView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
            .previewDisplayName("iPhone 11")

            ImageSwiftUIView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro"))
            .previewDisplayName("iPhone 11 Pro")


           ImageSwiftUIView()
              .previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro Max"))
              .previewDisplayName("iPhone 11 Pro Max")
        }
    }
}
#endif
