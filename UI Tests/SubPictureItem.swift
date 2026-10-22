//
//  SubPictureItem.swift
//  UI Tests
//
//  Created by Merab Okruashvili on 12/10/2026.
//

import SwiftUI

struct SubPictureItem: View {
    var description: String
    var image: String
    var color: Color
    @Binding var data: Int
    
    var body: some View {
            VStack(alignment: .leading) {
                HStack(spacing: 2) {
                    Image(systemName: image)
                        .font(.system(size: 12))
                    Text(description)
                        .font(.system(size: 14, weight: .bold))
                }
                .foregroundStyle(color)
                
                Text("\(data)\(description != "Calories" ? "g" : "")")
            }
    }
}

#Preview {
    SubPictureItem(description: "tetet", image: "drop.fill", color: .red, data: .constant(480))
}
