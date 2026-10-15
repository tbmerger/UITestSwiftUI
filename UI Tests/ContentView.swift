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
                
                VStack(alignment: .leading, spacing: 12) {
                    
                    HStack {
                        Image("lion1")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 40, height: 40)
                            .clipShape(.circle)
                        
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Cole Belvins")
                                .foregroundStyle(.primary)
                            Text("Today at 3:49pm")
                                .font(.subheadline)
                                .foregroundStyle(.secondary)
                        }
                        
                        Spacer()
                        
                        Menu {
                            Button("Edit", systemImage: "pencil") {
                                //TODO
                            }
                            
                            Button("Delete", systemImage: "trash", role: .destructive) {
                                //TODO
                            }
                        } label: {
                            Image(systemName: "ellipsis")
                                .foregroundStyle(.secondary)
                                .frame(width: 30, height: 30)
                        }
                    }
                    
                    Text("Grilled Chicken with Avocado, Garlic, Spinach, and Toast")
                        .foregroundStyle(.primary)
                        .font(.system(size: 16, weight: .bold))
                    
                    GeometryReader { geometry in
                        Image("lion1")
                            .resizable()
                            .scaledToFill()
                            .frame(width: geometry.size.width, height: 300)
                            .clipped()
                    }
                    .frame(height: 300)
                    
                    
                    
                    HStack(spacing: 20) {
                        SubPictureItem(description: "Calories", image: "drop.fill", color: .black, data: $calories)
                        SubPictureItem(description: "Protein",  image: "fish.fill", color: .red, data: $protein)
                        SubPictureItem(description: "Carbs",  image: "takeoutbag.and.cup.and.straw.fill", color: .orange, data: $carbs)
                        SubPictureItem(description: "Fats",  image: "oilcan.fill", color: .cyan, data: $fats)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .background(.white, in: RoundedRectangle(cornerRadius: 12))

            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            .padding(20)
            .background(Color.gray.opacity(0.2))
    }
}

#Preview {
    ContentView(calories: .constant(330), protein: .constant(220), carbs: .constant(110), fats: .constant(100))
}
