//
//  Ultimate_PortfolioApp.swift
//  Ultimate Portfolio
//
//  Created by Justin747 on 10/4/21.
//

import SwiftUI

@main
struct Ultimate_PortfolioApp: App {
    @StateObject var dataController: DataController
    
    init() {
        let dataController = DataController()
        _dataController = StateObject(wrappedValue: dataController)
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
                .environmentObject(dataController)
        }
    }
}
