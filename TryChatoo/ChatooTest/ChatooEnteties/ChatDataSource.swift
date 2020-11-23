//
//  ChatDataSource.swift
//  TryChatoo
//
//  Created by Anvar Basharov on 23.11.2020.
//

import Foundation
import Chatto

class ChatDataSource: ChatDataSourceProtocol {
        
    var hasMoreNext: Bool {
        return false
    }
    
    var hasMorePrevious: Bool {
        return false
    }
    
    var chatItems: [ChatItemProtocol] = []
    
    
    var delegate: ChatDataSourceDelegateProtocol?
    
    func loadNext() {
    }
    
    func loadPrevious() {
    }
    
    func adjustNumberOfMessages(preferredMaxCount: Int?, focusPosition: Double, completion: (Bool) -> Void) {        
    }
    
    public func updateDataSource(_ chatItems: [ChatItemProtocol]) {
        self.chatItems = chatItems
        delegate?.chatDataSourceDidUpdate(self, updateType: .normal)
    }
    
}
