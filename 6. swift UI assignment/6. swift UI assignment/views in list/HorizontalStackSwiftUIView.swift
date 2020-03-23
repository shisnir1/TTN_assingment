//
//  HorizontalStackSwiftUIView.swift
//  6. Swift UI assignment
//
//  Created by Mohit Pareek  on 18/03/20.
//  Copyright © 2020 Mohit Pareek . All rights reserved.
//

import SwiftUI

struct HorizontalStackSwiftUIView : View {
    var body : some View {
        HStack{
            Text("Hello")
                    .padding(.all, 10.0)
                    .lineLimit(nil)
                Text("Hey")
                    .padding(.all, 10.0)
                    .lineLimit(nil)
                Text("ahoy!!")
                    .padding(.all, 10.0)
                    .lineLimit(nil)
            }.background(Color.gray)
    }
    
}

#if DEBUG
struct HorizontalStackSwiftUIView_Previews : PreviewProvider {
    static var previews: some View {
        Group {
           HorizontalStackSwiftUIView()
              .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
              .previewDisplayName("iPhone 8")
            
            HorizontalStackSwiftUIView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 8 Plus"))
            .previewDisplayName("iPhone 8 Plus")
            
            HorizontalStackSwiftUIView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
            .previewDisplayName("iPhone 11")

            HorizontalStackSwiftUIView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro"))
            .previewDisplayName("iPhone 11 Pro")


           HorizontalStackSwiftUIView()
              .previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro Max"))
              .previewDisplayName("iPhone 11 Pro Max")
        }
    }
}
#endif
