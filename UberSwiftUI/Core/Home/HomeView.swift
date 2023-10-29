//
//  HomeView.swift
//  UberSwiftUI
//
//  Created by paku on 2023/10/28.
//

import SwiftUI

struct HomeView: View {
    
    @State private var showLocationSearchView = false
    
    var body: some View {
        ZStack(alignment: .top) {
            UberMapView()
                .ignoresSafeArea()
            
            if showLocationSearchView {
                LocationSearchView()
            } else {
                LocationSearchActivationView()
                    .padding(.top, 70)
                    .padding(.horizontal)
                    .onTapGesture {
                        withAnimation(.spring) {
                            showLocationSearchView.toggle()
                        }
                    }
            }
            
            MapViewActionButton(showLocationSearchView: $showLocationSearchView)
                .padding(.leading, 14)
        }
    }
}

#Preview {
    HomeView()
}
  
