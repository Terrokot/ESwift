//Rate.swift
//  Created 4.03.21
//  

import Foundation
import StoreKit

public class ShareManager: NSObject {
    // MARK: - Properties
    private weak var presentationController: UIViewController?
    
    //MARK: - Init
    public override init() {
        self.presentationController = topmostController
    }
    
    public func showShare(appId: String?) {
        let activityViewController : UIActivityViewController = UIActivityViewController(
            activityItems: ["https://apps.apple.com/us/app/id\(appId ?? "")"], applicationActivities: nil)
        if UIDevice.current.userInterfaceIdiom == .pad {
            activityViewController.popoverPresentationController?.sourceView = self.presentationController?.view
        }
        presentationController?.present(activityViewController, animated: true)
    }
}


public func rateApp(appId: String?) {
    if #available(iOS 10.3, *) {
        SKStoreReviewController.requestReview()

    } else if let appid = appId,
        let url = URL(string: "itms-apps://itunes.apple.com/app/" + "\(appid)") {
        UIApplication.shared.openURL(url)
    }
}
