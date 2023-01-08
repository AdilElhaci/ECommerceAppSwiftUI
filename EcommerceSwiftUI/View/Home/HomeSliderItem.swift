//
//  HomeSliderItem.swift
//  EcommerceSwiftUI
//
//  Created by Adil Elhaci on 8.01.2023.
//

import SwiftUI

struct HomeSliderItem: View {
    
    //MARK: - PROPERTY
    
    let player : Player
    
    //MARK: - BODY
    var body: some View {
        Image(player.image)
          .resizable()
          .scaledToFit()
          .cornerRadius(12)
            
    }
}


//MARK: - PREVIEW
struct HomeSliderItem_Previews: PreviewProvider {
    static var previews: some View {
        HomeSliderItem(player: players[0]).previewLayout(.sizeThatFits).padding()
    }
}
