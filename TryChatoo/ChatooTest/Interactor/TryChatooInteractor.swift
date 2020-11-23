class TryChatooInteractor {
    weak var presenter: TryChatooInteractorOutput!
    var messageService: MessageServiceProtocol!
}

extension TryChatooInteractor: TryChatooInteractorInput {
        
    func loadData() {
        messageService.loadMessages { [weak self] result in
            guard let self = self else { return }
            switch result {
            case .success(let messages):
                self.presenter.didLoadMessages(messages)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
