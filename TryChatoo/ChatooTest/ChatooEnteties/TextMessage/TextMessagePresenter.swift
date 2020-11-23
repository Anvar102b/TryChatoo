//
//  TextMessagePresenter.swift
//  TryChatoo
//
//  Created by Anvar Basharov on 23.11.2020.
//

import Foundation
import Chatto

class TextMessagePresenter: ChatItemPresenterProtocol {
    
    let model: TextMessageModel

    var isItemUpdateSupported: Bool = false
    
    init(model: TextMessageModel) {
        self.model = model
    }
    
    private static let cellReuseIdentifier = TextMessageCell.self.description()
    
    static func registerCells(_ collectionView: UICollectionView) {
        collectionView.register(TextMessageCell.self, forCellWithReuseIdentifier: cellReuseIdentifier)
    }
        
    func update(with chatItem: ChatItemProtocol) {
        
    }
    
    func heightForCell(maximumWidth width: CGFloat, decorationAttributes: ChatItemDecorationAttributesProtocol?) -> CGFloat {
        return 100
    }
    
    func dequeueCell(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: TextMessagePresenter.cellReuseIdentifier, for: indexPath)
    }
    
    func configureCell(_ cell: UICollectionViewCell, decorationAttributes: ChatItemDecorationAttributesProtocol?) {
        guard let textMessageCell = cell as? TextMessageCell  else { return }
        
        textMessageCell.textView.text = self.model.messageText
    }
    
    
}
