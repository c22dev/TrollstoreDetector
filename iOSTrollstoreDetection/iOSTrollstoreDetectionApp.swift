//
//  iOSTrollstoreDetectionApp.swift
//  iOSTrollstoreDetection
//
//  Created by Constantin Clerc on 12/12/2022.
//

import SwiftUI

@main
struct iOSTrollstoreDetectionApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    // Check if user has TrollTools folder
                    do {
                        //PATHS, do not delete this chunk
                        
                        // Path for TrollTools (see https://github.com/sourcelocation/TrollTools)
                        let PathTT = "/private/var/mobile/.DO-NOT-DELETE-TrollTools"
                        // Path for LocSim
                        let PathLS = "/private/var/mobile/LocationSimulation"
                        // Path for Mugunghwa (see https://github.com/s8ngyu/Mugunghwa)
                        let PathMG = "/private/var/mobile/mugunghwa"
                        
                        
                        if FileManager.default.fileExists(atPath: PathTT) || FileManager.default.fileExists(atPath: PathLS) || FileManager.default.fileExists(atPath: PathMG) {
                            
                            //Alert pop-up, can replace with anything from there
                            UIApplication.shared.confirmAlert(title: "TrollStore is installed on your device", body: "Our app can't work with TrollStore for security purposes.", onOK: {
                                // Do what your app should do if button pressed.
                            }, noCancel: true)
                            
                            
                        }
                }
            }
        }
    }
}


// Alert System

var currentUIAlertController: UIAlertController?

extension UIApplication {
    func dismissAlert(animated: Bool) {
        DispatchQueue.main.async {
            currentUIAlertController?.dismiss(animated: animated)
        }
    }
    func alert(title: String = "Error", body: String, animated: Bool = true, withButton: Bool = true) {
        DispatchQueue.main.async {
            currentUIAlertController = UIAlertController(title: title, message: body, preferredStyle: .alert)
            if withButton { currentUIAlertController?.addAction(.init(title: "OK", style: .cancel)) }
            self.present(alert: currentUIAlertController!)
        }
    }
    func confirmAlert(title: String = "Error", body: String, onOK: @escaping () -> (), noCancel: Bool) {
        DispatchQueue.main.async {
            currentUIAlertController = UIAlertController(title: title, message: body, preferredStyle: .alert)
            if !noCancel {
                currentUIAlertController?.addAction(.init(title: "Cancel", style: .cancel))
            }
            currentUIAlertController?.addAction(.init(title: "OK", style: noCancel ? .cancel : .default, handler: { _ in
                onOK()
            }))
            self.present(alert: currentUIAlertController!)
        }
    }
    func change(title: String = "Error", body: String) {
        DispatchQueue.main.async {
            currentUIAlertController?.title = title
            currentUIAlertController?.message = body
        }
    }
    
    func present(alert: UIAlertController) {
        if var topController = self.windows[0].rootViewController {
            while let presentedViewController = topController.presentedViewController {
                topController = presentedViewController
            }
            
            topController.present(alert, animated: true)
            // topController should now be your topmost view controller
        }
    }
}
