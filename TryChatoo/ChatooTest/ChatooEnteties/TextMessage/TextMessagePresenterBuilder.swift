//
//  TextMessagePresenterBuilder.swift
//  TryChatoo
//
//  Created by Anvar Basharov on 23.11.2020.
//

import Foundation
import Chatto

class TextMessagePresenterBuilder: ChatItemPresenterBuilderProtocol {
    
    func canHandleChatItem(_ chatItem: ChatItemProtocol) -> Bool {
        return chatItem is TextMessageModel
    }
    
    func createPresenterWithChatItem(_ chatItem: ChatItemProtocol) -> ChatItemPresenterProtocol {
        assert(self.canHandleChatItem(chatItem))
        return TextMessagePresenter(model: chatItem as! TextMessageModel)
    }
    
    var presenterType: ChatItemPresenterProtocol.Type {
        return TextMessagePresenter.self
    }
    
    
}
