//
//  LocationSearchResultCell.swift
//  UberSwiftUI
//
//  Created by paku on 2023/10/29.
//

import SwiftUI

struct LocationSearchResultCell: View {
    var body: some View {
        HStack {
            Image(systemName: "mappin.circle.fill")
                .resizable()
                .foregroundColor(.black)
                .tint(.white)
                .frame(width: 35, height: 35)
                .offset(y: -2)
            
            VStack(alignment: .leading) {
                Text("Starbucks Coffee")
                    .font(.body)
                
                Text("123 Main St, Cupertino CA")
                    .font(.footnote)
                    .foregroundColor(.gray)
                
                Divider()
            }
            .padding(.leading, 8)
        }
        .padding(.leading)
    }
}

#Preview {
    LocationSearchResultCell()
}
