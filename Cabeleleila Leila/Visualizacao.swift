//
//  Visualizacao.swift
//  Cabeleleila Leila
//
//  Created by Narely Lima on 18/05/22.
//

import SwiftUI

struct Visualizacao: View {
    
    let items = ListaData().listaModel
    var body: some View {
        VStack {
            ForEach(items) { item in
                HStack {
                    Image(systemName: item.isCompleted  ? "checkmark.circle" : "circle")
                    Text(item.name)

                }
            }
        }
    }
}

struct Visualizacao_Previews: PreviewProvider {
    static var previews: some View {
        Visualizacao()
    }
}
