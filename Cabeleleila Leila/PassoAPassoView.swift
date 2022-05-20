//
//  PassoAPassoView.swift
//  Cabeleleila Leila
//
//  Created by Narely Lima on 16/05/22.
//
import SwiftUI

struct PassoAPassoView: View{
    
    let item: Lista
    
    var body: some View{
        VStack{
            Text("Passo a Passo")
                .foregroundColor(.blue)
            Text("Ao final tem a quantidade de cada produto 💙")
                .foregroundColor(.blue)
            if let images = item.images {
                TabView {
                    ForEach(images, id: \.self) { image in
                        Image(image)
                            .resizable()
                            .aspectRatio(1.0,contentMode: .fit)
                            .padding()
                    }
                }
                .tabViewStyle(PageTabViewStyle())
            }
        }
        
    }
}
