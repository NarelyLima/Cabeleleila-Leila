//
//  SwiftUIView.swift
//  Cabeleleila Leila
//
//  Created by Narely Lima on 16/05/22.
//

import SwiftUI

struct GoalsDayView: View {
    
    @Environment(\.managedObjectContext) private var viewContext
    
    @State var data = ListaData().listaModel
    
    @State private var textField = ""
    @State private var textField2 = ""
    
    
    var body: some View {
        List{

            Section(header:Text("Metas de Hoje")){
                ForEach($data) { $item in
                    Section(item.name) {
                        ForEach($item.children) { $child in
                            NavigationLink(destination: PassoAPassoView(item: child.children[0])){
                                HStack {
                                    Image(systemName: child.isCompleted  ? "checkmark.circle" : "circle")
                                        .foregroundColor(child.isCompleted ? .green : .red)
                                        .onTapGesture {
                                            child.isCompleted.toggle()
                                        }
                                    Text(child.name)
                                }
                            }
                        }
                    }
                }
            }
        }
        
        .toolbar {
            ToolbarItem(placement: ToolbarItemPlacement.navigationBarLeading) {
                NavigationLink(destination: MeView(), label: {
                    Image(systemName: "person.crop.circle")
                        .foregroundColor(.blue)
                        .padding()
                })
            }
            ToolbarItem(placement: ToolbarItemPlacement.navigationBarTrailing){
                
                NavigationLink(destination: CalendarView(), label: {
                    Image(systemName: "calendar")
                        .foregroundColor(.blue)
                        .padding()
                })
            }
            ToolbarItem(placement: ToolbarItemPlacement.principal){
                Text("MAY 2022")
                    .bold()
            }
        }
        .listStyle(.sidebar)
        
    }
    
    
    
    
    
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            GoalsDayView()
        }
    }
}
