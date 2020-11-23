//
//  MessageService.swift
//  TryChatoo
//
//  Created by Anvar Basharov on 23.11.2020.
//

import Foundation

protocol MessageServiceProtocol: class {
    func loadMessages(completion: @escaping (Result<[TextMessageModel], Error>) -> Void)
}

class MessageService: MessageServiceProtocol {
    func loadMessages(completion: @escaping (Result<[TextMessageModel], Error>) -> Void) {
        let messageOne = TextMessageModel()
        messageOne.messageText = "Первое сообщение чата!😉"
        
        let messageTwo = TextMessageModel()
        messageTwo.messageText = "Второе сообщение чата!👍"
        
        let messageThree = TextMessageModel()
        messageThree.messageText = "Третье сообщение чата!😎"
        
        let messageFour = TextMessageModel()
        messageFour.messageText = "Четвертое сообщение чата!✅"
        
        let messages = [messageOne, messageTwo, messageThree, messageFour]
        
        completion(.success(messages))
    }
}
