//
//  TFImageView.swift
//  TFImageView
//
//  Created by Toseef Khilji on 31/01/19.
//  Copyright © 2019 AS Apps. All rights reserved.
//

import UIKit

@IBDesignable
open class TFImageView: UIImageView {


    @IBInspectable var X_Image:UIImage?  {
        didSet {
            if let img = X_Image {
                updateConstant(size: .iPhoneXs, image: img)
            }
        }
    }

    @IBInspectable var XR_Image:UIImage?  {
        didSet {
            if let img = XR_Image {
                updateConstant(size: .iPhoneXr, image: img)
            }
        }
    }

    @IBInspectable var XSMax_Image:UIImage?  {
        didSet {
            if let img = XSMax_Image {
                updateConstant(size: .iPhoneXsMax, image: img)
            }
        }
    }
    
    var tempConst: CGFloat = 0
    fileprivate func updateConstant(size: Device, image: UIImage) {
        print("updateConstant:\(size), self:\(Device())")
        print("realdevice:\(Device.realDevice(from: Device()))")
        let realDevice = Device.realDevice(from: Device())
        if size == realDevice {
            self.image = image
        }
    }

    override open func layoutSubviews() {
        super.layoutSubviews()
            print("layoutSubviews")
    }

    override open func awakeFromNib() {
        super.awakeFromNib()
        print("awakeFromNib")
    }

    override open func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        super.layoutSubviews()
    }
}

//fileprivate extension Device {
//    static let deviceSize = Device.size()
//}
