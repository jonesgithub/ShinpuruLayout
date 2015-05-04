//
//  SLControls.swift
//  ShinpuruLayout
//
//  Created by Simon Gladman on 03/05/2015.
//  Copyright (c) 2015 Simon Gladman. All rights reserved.
//

import UIKit

class SLLabel: UILabel, SLLayoutItem
{
    var percentageSize: CGFloat?
    var explicitSize: CGFloat?
}

/// SLLayoutItem
protocol SLLayoutItem
{
    /// For items in an HGroup, the width as a percentage of the parent's width, for items in a VGroup, the height as a percentage of the parent's height
    /// If set to nil, Shinpuru Layout treats this like a standard UIView and automatically sets percentage itself
    var percentageSize: CGFloat? {get set}
    
    /// If percentage is nil, optional explicit size allows the item's width or height to be set in points
    var explicitSize: CGFloat? {get set}
}