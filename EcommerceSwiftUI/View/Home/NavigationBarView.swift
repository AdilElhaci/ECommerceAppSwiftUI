//
//  NavigationBarView.swift
//  EcommerceSwiftUI
//
//  Created by Adil Elhaci on 4.01.2023.
//

import SwiftUI

struct NavigationBarView: View {
    
    //MARK: - PROPERTIES
    
    @State private var isAnimated : Bool = false
    
    //MARK: - BODY
    var body: some View {
        HStack(){
            Button(action : {} , label:{
                Image(systemName: "magnifyingglass").font(.title).foregroundColor(.black)
            })
            
            
            Spacer()
            
            HStack(spacing:4){
                
                
                Text("TOUCH").font(.title3)
                    .fontWeight(.black).foregroundColor(.black)
                
                Image("logo-dark").resizable()
                    .
                scaledToFit().frame(width: 30,height: 30,alignment: .center)
                
                Text("DOWN").font(.title3)
                    .fontWeight(.black).foregroundColor(.black)
            }.opacity(isAnimated ? 1 : 0)
                .offset( y : isAnimated ? 0 :-25 )
            
            .onAppear {
                withAnimation(.easeOut(duration: 0.5)){
                    isAnimated.toggle()
                }
            }
            Spacer()
            
            Button(action : {} , label:{
                ZStack {
                    Image(systemName: "cart").font(.title).foregroundColor(.black)
                    
                    Circle(
                    ).fill(Color.red).frame(width: 14,height: 14,alignment: .center).offset(x:13,y: -10)
                }
            })
            
        }// : HSTACK
    }
}


//MARK: - PREVIEW
struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView().previewLayout(.sizeThatFits).padding()
    }
}
