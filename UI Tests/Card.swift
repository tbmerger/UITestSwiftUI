//
//  Card.swift
//  UI Tests
//
//  Created by Merab Okruashvili on 20/10/2026.
//

import SwiftUI

struct Card: View {
    @Binding var calories: Int
    @Binding var protein: Int
    @Binding var carbs: Int
    @Binding var fats: Int
    
    var body: some View {
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
            HStack {
                HStack {
                    ButtonReactions(countReactions: 3, isSelected: true)
                    ButtonReactions(countReactions: 1, icon: "hands.clap.fill", buttonWidth: 1)
                }
                Spacer()
                
                HStack(spacing: 10) {
                    
                    HStack(spacing: -7.5) {
                        UserImageCircle()
                        UserImageCircle()
                    }
                                                
                    Image(systemName: "text.bubble")
                        .font(.system(size: 14))
                        .foregroundStyle(.gray)
                        .padding(.leading, -3)
                        .padding(.trailing, -4)
                    
                    Text("2")
                        .foregroundStyle(.gray)
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
                .padding(.top, 10)
            
            HStack(spacing: 80) {
                HStack {
                    Image(systemName: "face.smiling")
                        .font(.system(size: 14))
                        .foregroundStyle(.gray)
                        .overlay(alignment: .topTrailing) {
                            Image(systemName: "plus")
                                .font(.system(size: 9, weight: .bold))
                                .foregroundStyle(.gray)
                                .offset(x: 2, y: -2)
                        }
                        .padding(.leading, -3)
                        .padding(.trailing, -4)
                    
//                    Spacer()
                    
                    Text("React")
                        .foregroundStyle(.black.opacity(0.6))
                        .font(.system(size: 16))
                }
                
                HStack {
                    Image(systemName: "text.bubble")
                        .font(.system(size: 14))
                        .foregroundStyle(.gray)
                        .padding(.leading, -3)
                        .padding(.trailing, -4)
                    
                    Text("Comment")
                        .foregroundStyle(.black.opacity(0.6))
                        .font(.system(size: 16))
                }
                
            }
            .frame(maxWidth: .infinity)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(.white, in: RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    Card(calories: .constant(330), protein: .constant(220), carbs: .constant(110), fats: .constant(100))
}
