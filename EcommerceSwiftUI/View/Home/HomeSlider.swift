//
//  HomeSlider.swift
//  EcommerceSwiftUI
//
//  Created by Adil Elhaci on 8.01.2023.
//

import SwiftUI

struct HomeSlider: View {
    
    //MARK: - PROPERTY
    
    //MARK: - BODY
    var body: some View {
        TabView {
          ForEach(players) { player in
            HomeSliderItem(player: player)
              .padding(.top, 10)
              .padding(.horizontal, 15)
          }
        } //: TAB
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}


//MARK: - PREVIEW

struct HomeSlider_Previews: PreviewProvider {
    static var previews: some View {
        HomeSlider()
            .previewDevice("iPhone 12 Pro")
            .background(.gray)
    }
}
