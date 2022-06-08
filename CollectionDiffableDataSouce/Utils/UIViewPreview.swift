//
//  UIViewPreview.swift
//  CollectionDiffableDataSouce
//
//  Created by user218860 on 6/7/22.
//

import UIKit

#if canImport(SwiftUI) && DEBUG

import SwiftUI

struct UIViewPreview<View: UIView>: UIViewRepresentable {
    
    let view: View
    
    init(_ builder: @escaping () -> View) {
        view = builder()
    }
    
    func makeUIView(context: Context) -> UIView {
        view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        uiView.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        uiView.setContentHuggingPriority(.defaultHigh, for: .vertical)
    }
}

#endif
