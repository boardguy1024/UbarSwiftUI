//
//  LocationSearchView.swift
//  UberSwiftUI
//
//  Created by paku on 2023/10/29.
//

import SwiftUI

struct LocationSearchView: View {
    
    @State private var startLocationText: String = ""
    @State private var destinationLocationText: String = ""

    var body: some View {
        
        VStack {
            HStack {
                VStack {
                    Circle()
                        .fill(Color(.systemGray))
                        .frame(width: 6, height: 6)
                    
                    Rectangle()
                        .fill(Color(.systemGray))
                        .frame(width: 1 , height: 20)
                    
                    Rectangle()
                        .fill(Color.black)
                        .frame(width: 6, height: 6)
                }
                
                VStack {
                    TextField("Current Location", text: $startLocationText)
                        .frame(height: 32)
                        .background(Color(.systemGroupedBackground))
                    
                    TextField("Where to", text: $destinationLocationText)
                        .frame(height: 32)
                        .background(Color(.systemGroupedBackground))
                }
            }
            .padding(.top, 60)
            .padding(.horizontal)
            
            Divider()
                .padding(.vertical)
            
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(0..<5, id: \.self) { _ in
                        LocationSearchResultCell()
                    }
                }
            }
        }
        .background(.white)
    }
}

#Preview {
    LocationSearchView()
}
