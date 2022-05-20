//
//  Me.swift
//  Cabeleleila Leila
//
//  Created by Narely Lima on 17/05/22.
//

import SwiftUI

struct MeView: View {
    @State private var name = ""
    @State private var email = ""
    @State private var showGreeting = true
    @State private var showGood = true
    
    var body: some View {
        
        VStack{
            Image("perfil")
                .resizable()
                .frame(width: 150, height: 150, alignment: .topLeading)
                .cornerRadius(100)
                .padding(.bottom, 30)
            List {
                Section(header:Text("Informações Pessoais")) {
                TextField("Nome:", text: $name)
                    .padding()
                    .border(Color(UIColor.separator))
                
                TextField("Email:", text: $email)
                    .padding()
                    .border(Color(UIColor.separator))
                }
                Section(header:Text("Permissões")){
                    VStack{
                        Toggle("Notificações", isOn: $showGreeting)
                        if showGreeting {
                            Text("")
                        }
                        Toggle("Li e aceito os termos", isOn: $showGood)
                        if showGood {
                            Text("")
                        }
                    }
            }
            }
        }
    }
}

struct Me_Previews: PreviewProvider {
    static var previews: some View {
        MeView()
    }
}
