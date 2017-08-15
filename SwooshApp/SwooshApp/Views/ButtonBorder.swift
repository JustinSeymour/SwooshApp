//
//  ButtonBorder.swift
//  SwooshApp
//
//  Created by Justin Seymour on 2017/08/14.
//  Copyright © 2017 Justin Seymour. All rights reserved.
//

import UIKit

class ButtonBorder: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }
}
