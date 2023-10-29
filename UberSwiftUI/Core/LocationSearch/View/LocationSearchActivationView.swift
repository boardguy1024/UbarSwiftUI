 //
//  LocationSearchActivationView.swift
//  UberSwiftUI
//
//  Created by paku on 2023/10/29.
//

import SwiftUI

struct LocationSearchActivationView: View {
    var body: some View {
        
        HStack {
            Rectangle()
                .fill(.black)
                .frame(width: 8, height: 8)
                .padding(.horizontal)
                .padding(.leading, 10)
            
            Text("Where to")
                .foregroundStyle(Color(.darkGray))
            
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width - 40)
        .frame(height: 50)
        .background(
            Capsule()
                .fill(.white)
                .shadow(color: .black.opacity(0.5), radius: 10)
        )
    }
}

#Preview {
    LocationSearchActivationView()
}
