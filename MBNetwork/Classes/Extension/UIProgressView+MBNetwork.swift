//
//  UIProgressView+MBNetwork.swift
//  Pods
//
//  Created by ZhengYidong on 26/12/2016.
//
//

import Foundation
import Alamofire


// MARK: - Making UIProgressView conforms to MBLoadProgressable
extension UIProgressView: MBLoadProgressable {
    
    /// Updating progress
    ///
    /// - Parameter progress: Progress object from network request
    public func progress(_ progress: Progress) {
        self.setProgress(Float(progress.completedUnitCount).divided(by: Float(progress.totalUnitCount)), animated: true)
    }
}
