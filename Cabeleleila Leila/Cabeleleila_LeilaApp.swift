//
//  Cabeleleila_LeilaApp.swift
//  Cabeleleila Leila
//
//  Created by Narely Lima on 12/05/22.
//

import SwiftUI

@main
struct Cabeleleila_LeilaApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            FirstView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
