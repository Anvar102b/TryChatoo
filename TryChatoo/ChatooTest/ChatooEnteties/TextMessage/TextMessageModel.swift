//
//  TextMessageModel.swift
//  TryChatoo
//
//  Created by Anvar Basharov on 23.11.2020.
//

import Foundation
import Chatto

class TextMessageModel: ChatItemProtocol {
    let type: ChatItemType = TestChatItemType.textMessage.rawValue
    let uid: String = UUID().uuidString    
    
    var messageText: String?
}
