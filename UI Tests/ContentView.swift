//
//  ContentView.swift
//  UI Tests
//
//  Created by Merab Okruashvili on 02/10/2026.
//

import SwiftUI

struct ContentView: View {
    @Binding var calories: Int
    @Binding var protein: Int
    @Binding var carbs: Int
    @Binding var fats: Int
       
    var body: some View {
            VStack(alignment: .leading, spacing: 12) {
                TopHorizontalScroll()
                
                ScrollView {
                    LazyVStack {
                        ForEach(1...5, id: \.self) { index in
                            Card(
                                calories: $calories,
                                protein: $protein,
                                carbs: $carbs,
                                fats: $fats
                            )
                        }
                    }
                }
                
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            .padding(20)
            .background(Color.gray.opacity(0.2))
    }
}

#Preview {
    ContentView(calories: .constant(330), protein: .constant(220), carbs: .constant(110), fats: .constant(100))
}
