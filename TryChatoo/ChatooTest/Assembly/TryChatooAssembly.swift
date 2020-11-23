import UIKit
import Chatto

class TryChatooAssembly {

    static func assemble() -> UIViewController {
        let view = TryChatooViewController()
        let router = TryChatooRouter()
        let presenter = TryChatooPresenter()
        let interactor = TryChatooInteractor()
        let textManager = TryChatooTextManager()

        view.presenter = presenter
        view.textManager = textManager
        presenter.view = view
        presenter.interactor = interactor
        presenter.textManager = textManager
        presenter.router = router
        interactor.presenter = presenter
        router.view = view
        
        interactor.messageService = MessageService()

        view.presenterBuilders = [
            TestChatItemType.textMessage.rawValue: [TextMessagePresenterBuilder()]
        ]
        view.chatDataSource = ChatDataSource()
        view.placeMessagesFromBottom = true
        
        return view
    }

}
