class TryChatooPresenter {
    weak var view: TryChatooViewInput!
    var interactor: TryChatooInteractorInput!
    var router: TryChatooRouter!
    var textManager: TryChatooTextManagerProtocol!
}

extension TryChatooPresenter {

}

extension TryChatooPresenter: TryChatooViewOutput {
    func viewDidLoad() {
        interactor.loadData()
    }
}

extension TryChatooPresenter: TryChatooInteractorOutput {
    func didLoadMessages(_ messages: [TextMessageModel]) {
        self.view.updateDataSource(messages)
    }
}
