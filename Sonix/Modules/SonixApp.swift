//Copyright © 2022 and Confidential to ___ORGANIZATIONNAME___ All rights reserved.
   

import SwiftUI

@main
struct SonixApp: App {
    let persistenceController = PersistenceController.shared
    let userManager = UserManager.shared
    
    
    init() {
        navbarAppearance()
        tabbarAppearance()
        userManager.readUserData()
    }

    var body: some Scene {
        WindowGroup {
            LaunchScreen()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
    
    func tabbarAppearance() {
        let appearance = UITabBarAppearance()
        appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)
        appearance.backgroundColor = AppColor.BackGround.lightBackground
        
        UITabBar.appearance().unselectedItemTintColor = AppColor.Components.TabBar.tint
        UITabBar.appearance().barTintColor = AppColor.Components.TabBar.tint
        
        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
    
    
    
    func navbarAppearance() {
        let appearance = UINavigationBarAppearance()
        appearance.titleTextAttributes = [.foregroundColor: AppColor.primaryText]
        
        appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)
        appearance.backgroundColor = AppColor.BackGround.lightBackground
        
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: AppColor.primaryText]
        UINavigationBar.appearance().barTintColor = AppColor.Components.TabBar.tint
        
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
}
