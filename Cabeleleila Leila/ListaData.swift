//
//  ListaData.swift
//  Cabeleleila Leila
//
//  Created by Narely Lima on 18/05/22.
//

import Foundation

struct ListaData {
    
    var listaModel = [
        Lista(name:"Hair", icon: "heart", children: [
            Lista(name: "Hidratar: Lola - Morte Súbita ", children: [
            Lista(name: "Passo a Passo", icon: "doc.on.clipboard.fill", images: ["Shampoo Lola", "shampoo","Mascara Lola", "mascara", "Condicionador Lola", "condicionador", "cabelo"])
        ]),
            Lista(name: "Reparador de Pontas: Natura", children: [
                Lista(name: "Passo a Passo", icon: "doc.on.clipboard.fill", images: ["Oleo Reparador", "oleoreparador"])
        ])
        ]),
        Lista(name:"Nails",icon: "heart",children: [
        Lista(name: "Hidratar: Açúcar", children: [
            Lista(name: "Passo a Passo", icon: "doc.on.clipboard.fill", images: ["hidratante", "rosamosqueta", "acucar", "massagem", "hidraunhas"])
        ]),
        Lista(name: "Oléo de Rosa Mosqueta", children: [
            Lista(name: "Passo a Passo", icon: "doc.on.clipboard.fill", images: ["rosamosqueta", "massagem", "mao e pes"])
        ])
        ]),
        Lista(name:"Skin",icon: "heart",children: [
        Lista(name: "Protetor Solar",children: [
            Lista(name: "Passo a Passo", icon: "doc.on.clipboard.fill", images: ["protetorsola", "protetorsolar", "passeprot"])
        ]),
        Lista(name: "Lavar rosto: Clear", children: [
            Lista(name: "Passo a Passo", icon: "doc.on.clipboard.fill", images: ["sabonete", "lavando"])
        ])
        ]),
    ]
    
    mutating func updateItem(item: Lista) {
          if let index = listaModel.firstIndex (where: {$0.id == item.id}) {
              listaModel[index] = item.updateCompletion()        }
    }
}
