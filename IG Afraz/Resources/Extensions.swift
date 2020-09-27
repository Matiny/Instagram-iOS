//
//  Extensions.swift
//  IG Afraz
//
//  Created by Matiny L on 9/26/20.
//  Copyright © 2020 Matiny L. All rights reserved.
//

import UIKit

/* Shorthand extensions for the project */

extension UIView {
    
    public var width: CGFloat {
        return frame.size.width
    }
    
    public var height: CGFloat {
        return frame.size.height
    }
    
    public var top: CGFloat {
        return frame.origin.y
    }
    
    public var left: CGFloat {
        return frame.origin.x
    }
    
    // Check to see if these must be explicit
    
    public var bottom: CGFloat {
        return top + height
    }
    
    public var right: CGFloat {
        return left + width
    }
    
}
