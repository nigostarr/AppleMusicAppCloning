//
//  DefaultStyle.swift
//  AppleMusicAppCloning
//
//  Created by Ji Chang Hyun on 2020/07/10.
//  Copyright © 2020 Nigostarr. All rights reserved.
//

import UIKit

public enum DefaultStyle {
    public enum Colors {
        public static let tint: UIColor = {
            if #available(iOS 13.0, *) {
                return UIColor { traitCollction in
                    if traitCollction.userInterfaceStyle == .dark {
                        return .white
                    } else {
                        return .black
                    }
                }
            } else {
                return .black
            }
        }()
    }
}
