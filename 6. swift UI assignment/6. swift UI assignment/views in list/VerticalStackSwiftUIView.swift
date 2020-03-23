//
//  VerticalStackSwiftUIView.swift
//  6. Swift UI assignment
//
//  Created by Mohit Pareek  on 18/03/20.
//  Copyright © 2020 Mohit Pareek . All rights reserved.
//

import SwiftUI

struct VerticalStackSwiftUIView : View {
    var body: some View {
        VStack {
                Text("Hello")
                    .padding(.all, 10.0)
                    .lineLimit(nil)
                Text("Hey")
                    .padding(.all, 10.0)
                    .lineLimit(nil)
                Text("ahoy!!")
                    .padding(.all, 10.0)
                    .lineLimit(nil)
                Text("Hye!!")
                    .padding(.all, 10.0)
                    .lineLimit(nil)
                Text("Heya!!")
                    .padding(.all, 10.0)
                    .lineLimit(nil)
                Text("Just hi!!")
                    .padding(.all, 10.0)
                    .lineLimit(nil)
            }.background(Color.gray)
        }
    
    
}

#if DEBUG
struct VerticalStackSwiftUIView_Previews : PreviewProvider {
    static var previews: some View {
        Group {
           VerticalStackSwiftUIView()
              .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
              .previewDisplayName("iPhone 8")
            
            VerticalStackSwiftUIView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 8 Plus"))
            .previewDisplayName("iPhone 8 Plus")
            
            VerticalStackSwiftUIView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
            .previewDisplayName("iPhone 11")

            VerticalStackSwiftUIView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro"))
            .previewDisplayName("iPhone 11 Pro")


           VerticalStackSwiftUIView()
              .previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro Max"))
              .previewDisplayName("iPhone 11 Pro Max")
        }

    }
}
#endif
