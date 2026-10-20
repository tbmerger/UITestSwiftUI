//
//  ButtonReactions.swift
//  UI Tests
//
//  Created by Merab Okruashvili on 17/10/2026.
//

import SwiftUI

struct ButtonReactions: View {
    var countReactions: Int = 5
    var isSelected: Bool = false
    var icon: String = "flame.fill"
    
    var buttonWidth: CGFloat = 13
    
    var body: some View {
        HStack(spacing: 2) {
            Image(systemName: icon)
                .foregroundStyle(.orange)
            Text(String(countReactions))
        }
        .padding(.horizontal, buttonWidth)
        .padding(.vertical, 4)
        .background(isSelected ? Color.gray.opacity(0.3) : .white)
        .clipShape(RoundedRectangle(cornerRadius: 32))
//        .border(.green)
        .overlay {
            RoundedRectangle(cornerRadius: 32)
                .stroke(isSelected ? .black.opacity(0.7) : .white, lineWidth: isSelected ? 2 : 0)
        }
    }
}

#Preview {
    ButtonReactions()
}
