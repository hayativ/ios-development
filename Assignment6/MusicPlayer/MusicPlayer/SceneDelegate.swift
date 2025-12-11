//
//  SceneDelegate.swift
//  MusicPlayer
//
//  Created by Михаил Давыдов on 07.11.2025.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: windowScene)
        let rootVC = ViewController()
        window.rootViewController = rootVC
        rootVC.title = "Music Player"
        self.window = window
        window.makeKeyAndVisible()
    }
}
