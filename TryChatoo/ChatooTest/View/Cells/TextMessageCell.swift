//
//  TextMessageCell.swift
//  TryChatoo
//
//  Created by Anvar Basharov on 23.11.2020.
//

import UIKit

class TextMessageCell: UICollectionViewCell {
    
    lazy var textView: UITextView = {
        let rect = contentView.frame
        let textView = UITextView(frame:rect, textContainer:nil)
        textView.autoresizingMask = [.flexibleWidth,.flexibleHeight]
        textView.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        textView.textContainerInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        textView.isEditable = false
        textView.isSelectable = true
        textView.dataDetectorTypes = .all
        textView.scrollsToTop = false
        textView.isScrollEnabled = false
        textView.bounces = false
        textView.bouncesZoom = false
        textView.showsHorizontalScrollIndicator = false
        textView.showsVerticalScrollIndicator = false
        textView.isExclusiveTouch = true
        textView.textContainer.lineFragmentPadding = 0
        textView.backgroundColor = .clear
        return textView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonInit()
    }

    private func commonInit() {
        contentView.addSubview(textView)
    }
}
