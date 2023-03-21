//
//  RoundedShape.swift
//  TwitterCloneSwiftUIPetProj
//
//  Created by Sergey Petrosyan on 18.03.23.
//

import SwiftUI

struct RoundedShape: Shape {
    
    var corners: UIRectCorner
    var cornerRadii: CGSize
    
    func path(in rect: CGRect) -> Path {
        Path(UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: cornerRadii).cgPath)
    }
}
