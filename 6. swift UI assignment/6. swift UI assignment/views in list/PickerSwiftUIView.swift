//
//  PickerSwiftUIView.swift
//  6. Swift UI assignment
//
//  Created by Mohit Pareek  on 18/03/20.
//  Copyright © 2020 Mohit Pareek . All rights reserved.
//

import SwiftUI

struct PickerSwiftUIView: View {
    
    @State private var pickerSelectedIndex = 0
    var arrayText = ["One","Two","Three"]
    
    var body: some View {
        VStack(spacing: 20.0) {
            Picker(selection:$pickerSelectedIndex, label: Text("Picker")) {
                ForEach(0..<arrayText.count) {
                    Text(self.arrayText[$0])
                        .multilineTextAlignment(.center)
                        .frame(width: 500)
                        .padding(.all, 10.0) //.tag($0)
                }
                }.frame(width: UIScreen.main.bounds.width/2)
            
            Text("Selected value is:  \(self.arrayText[pickerSelectedIndex])")
                .font(.headline)
                .foregroundColor(.blue)
                .multilineTextAlignment(.center)
        }
        .padding(.all, 20.0)
    }
    
}

#if DEBUG
struct PickerSwiftUIView_Previews : PreviewProvider {
    static var previews: some View {
        Group {
           PickerSwiftUIView()
              .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
              .previewDisplayName("iPhone 8")
            
            PickerSwiftUIView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 8 Plus"))
            .previewDisplayName("iPhone 8 Plus")
            
            PickerSwiftUIView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
            .previewDisplayName("iPhone 11")

            PickerSwiftUIView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro"))
            .previewDisplayName("iPhone 11 Pro")


           PickerSwiftUIView()
              .previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro Max"))
              .previewDisplayName("iPhone 11 Pro Max")
        }
    }
}
#endif
