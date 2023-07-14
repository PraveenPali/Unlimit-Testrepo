//
//  SceneDelegate.swift
//  Assignment
//
//  Created by mac on 2023-06-26.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let _ = (scene as? UIWindowScene) else { return }
        guard let windowScene = (scene as? UIWindowScene) else { return }
               window = UIWindow(frame: windowScene.coordinateSpace.bounds)
               window?.windowScene = windowScene
               window?.backgroundColor = .systemBlue
               window?.rootViewController = JokesListController()
               window?.makeKeyAndVisible()
    }


}

