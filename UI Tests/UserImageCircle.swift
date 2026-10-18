//
//  UserImageCircle.swift
//  UI Tests
//
//  Created by Merab Okruashvili on 18/10/2026.
//

import SwiftUI

struct UserImageCircle: View {
    var userImage: String = "lion1"
    
    var body: some View {
        Image(userImage)
            .resizable()
            .scaledToFill()
            .frame(width: 25, height: 25)
            .border(.blue, width: 2)
            .clipShape(.circle)
    }
}

#Preview {
    UserImageCircle()
}
