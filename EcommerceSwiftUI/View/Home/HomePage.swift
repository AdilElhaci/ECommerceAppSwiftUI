//
//  HomePage.swift
//  EcommerceSwiftUI
//
//  Created by Adil Elhaci on 4.01.2023.
//

import SwiftUI


struct HomePage: View {
    
    //MARK: - Body
    var body: some View {
        ZStack {
            VStack(spacing:0){
                
                NavigationBarView()
                    .padding(.horizontal,14)
                    .padding(.bottom)
                    .padding(.top , UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white).shadow(color: Color.black.opacity(0.05), radius: 5,x: 0 , y : 5)
                
                
                
                ScrollView(.vertical, showsIndicators: false){
                
                    
                    VStack(spacing:0){
                        
                        HomeSlider().padding(.vertical, 20)
                            .frame(height: UIScreen.main.bounds.width / 1.475) 
                        
                    }//: VSTACK
                    
                    
                    
                }//: SCROLL
                
               
                
                
                
                
            }//: Vstack
            .background(ColorBackground.ignoresSafeArea(.all,edges: .all))
        } // : ZSTACK
        .ignoresSafeArea(.all , edges: .top)
    }
        
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
