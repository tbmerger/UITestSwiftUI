//
//  TopHorizontalScroll.swift
//  UI Tests
//
//  Created by Merab Okruashvili on 09/10/2026.
//

import SwiftUI

struct TopHorizontalScroll: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 26) {
                ForEach(1...20, id:\.self) { index in
                    VStack {
                        Image("lion1")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50)
                            .clipShape(.capsule)
                            .overlay(alignment: .bottom) {
                                Text("🔥 \(index)")
                                    .font(.system(size: 10))
                                    .padding(.horizontal, 5)
                                    .padding(.vertical, 4)
                                    .background(.white, in: .capsule)
                                    .offset(y: 12)
                            }
                    }
                }
            }
        }
        .frame(height: 70)        
    }
}

#Preview {
    TopHorizontalScroll()
}
