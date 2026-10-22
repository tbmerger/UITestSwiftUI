//
//  BottomNavigationBar.swift
//  UI Tests
//
//  Created by Merab Okruashvili on 21/10/2026.
//

import SwiftUI

struct BottomNavigationBar: View {
    @Binding var selectedTab: String
    var onAdd: () -> Void
    
    private let tabs: [(title: String, icon: String)] = [
        ("Home", "house"),
        ("Progress", "chart.bar"),
        ("Groups", "person.3.fill"),
        ("Profile", "person.crop.circle")
    ]
    
    var body: some View {
        HStack(spacing: 10) {
            HStack(spacing: 0) {
                ForEach(tabs, id: \.title) { tab in
                    Button {
                        selectedTab = tab.title
                    } label: {
                        VStack(spacing: 6) {
                            Image(systemName: tab.icon)
                                .font(.system(size: 18, weight: .semibold))
                            
                            Text(tab.title)
                                .font(.system(size: 10, weight: .medium))
                        }
                        .foregroundStyle(
                            selectedTab == tab.title
                            ? .black
                            : .gray
                        )
                        .frame(maxWidth: .infinity)
                        .frame(height: 56)
                        .background {
                            if selectedTab == tab.title {
                                RoundedRectangle(cornerRadius: 18)
                                    .fill(Color.gray.opacity(0.15))
                                    .padding(3)
                            }
                        }
                        .contentShape(Rectangle())
                    }
                    .buttonStyle(.plain)
                }
            }
            
            // Круглая кнопка добавления
            Button(action: onAdd) {
                Image(systemName: "plus")
                    .font(.system(size: 25, weight: .medium))
                    .foregroundStyle(.white)
                    .frame(width: 62, height: 62)
                    .background(.black, in: .circle)
            }
            
        }
        .padding(.horizontal, 5)
        .background(.white, in: Capsule())
        .shadow(color: .black.opacity(0.08), radius: 10, y: 3)
        
        // Круглая кнопка добавления
//        Button(action: onAdd) {
//            Image(systemName: "plus")
//                .font(.system(size: 25, weight: .medium))
//                .foregroundStyle(.white)
//                .frame(width: 62, height: 62)
//                .background(.black, in: .circle)
//        }
    }
}

#Preview {
    BottomNavigationBar(selectedTab: .constant(""), onAdd: {})
}
