//
//  MapViewActionButton.swift
//  UberSwiftUI
//
//  Created by paku on 2023/10/29.
//

import SwiftUI

struct MapViewActionButton: View {
    
    @Binding var showLocationSearchView: Bool
    
    var body: some View {
        
        Button {
            withAnimation(.spring()) {
                showLocationSearchView.toggle()
            }
        } label: {
            Image(systemName: showLocationSearchView ? "xmark" : "line.3.horizontal")
                .font(.title2)
                .foregroundColor(.black)
                .frame(width: 40, height: 40)
                .background(.white)
                .clipShape(Circle())
                .shadow(radius: 10 )
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    MapViewActionButton(showLocationSearchView: .constant(false))
}
