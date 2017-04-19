//
//  MHProgressButton.swift
//  MHProgressButton
//
//  Created by Mohamed Emad Abdalla Hegab on 19.04.17.
//  Copyright © 2017 MohamedHegab. All rights reserved.
//

import UIKit


class MHProgressButton: UIButton {

    @IBInspectable
    var loadingColor: UIColor = UIColor.green

    func linearLoadingWith(progress: CGFloat){
        let backgroundImage = mergeImagesOn(progress: progress)
        self.setBackgroundImage(backgroundImage, for: .normal)
    }

    fileprivate func mergeImagesOn(progress: CGFloat) -> UIImage {
        let buttonWidth = frame.width
        let progressWidth = progress * (buttonWidth / 100)
        let unprogressedWidth = buttonWidth - progressWidth
        let progressSize = CGSize(width: progressWidth, height: frame.height)
        let unprogressSize = CGSize(width: unprogressedWidth, height: frame.height)
        let loadingColorImage = UIImage(color: loadingColor, size: progressSize)
        let buttonMainColorImage = UIImage(color: backgroundColor ?? UIColor.clear , size: unprogressSize)
        UIGraphicsBeginImageContextWithOptions(frame.size, false, 0.0)
        loadingColorImage?.draw(in: CGRect(x: 0, y: 0, width: progressSize.width, height: progressSize.height))
        buttonMainColorImage?.draw(in: CGRect(x: progressSize.width + 1, y: 0, width: unprogressSize.width, height: unprogressSize.height))
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return newImage!
    }
}

public extension UIImage {
    public convenience init?(color: UIColor, size: CGSize = CGSize(width: 1, height: 1)) {
        let rect = CGRect(origin: .zero, size: size)
        UIGraphicsBeginImageContextWithOptions(rect.size, false, 0.0)
        color.setFill()
        UIRectFill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        guard let cgImage = image?.cgImage else { return nil }
        self.init(cgImage: cgImage)
    }
}
