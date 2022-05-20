//
//  ContentView.swift
//  Cabeleleila Leila
//
//  Created by Narely Lima on 12/05/22.
//

import SwiftUI
import CoreData

struct FirstView: View {
    var body: some View {
       NavigationView{
           VStack {
               Image("inicial")
                   .frame(width: 70, height: 70, alignment: .center)
                   .padding()
                   
               NavigationLink(destination: GoalsDayView(), label:{
                   Text("Vamos lá")
                       .bold()
                       .frame(width: 270, height: 60)
                       .background(Color.blue)
                       .foregroundColor(.white)
                       .cornerRadius(10)
               })
           }
       }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
