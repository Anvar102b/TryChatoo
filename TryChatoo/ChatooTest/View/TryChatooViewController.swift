import UIKit
import Chatto

extension TryChatooViewController {
    struct Appearance {

    }
}

final class TryChatooViewController: BaseChatViewController {

    private let appearance = Appearance()

    var presenter: TryChatooViewOutput!
    var textManager: TryChatooTextManagerProtocol!
    var presenterBuilders: [ChatItemType: [ChatItemPresenterBuilderProtocol]]!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        addSubviews()
        makeConstraints()
        presenter.viewDidLoad()
    }

    private func addSubviews() {
    }

    private func makeConstraints() {
    }
    
    // MARK: - Chatto
    
    override func createPresenterBuilders() -> [ChatItemType: [ChatItemPresenterBuilderProtocol]] {
        return presenterBuilders
    }

    override func createChatInputView() -> UIView {
        return UIView()
    }
    
}

extension TryChatooViewController: TryChatooViewInput {
    func updateDataSource(_ messages: [TextMessageModel]) {
        guard let dataSource = self.chatDataSource as? ChatDataSource else {
            return
        }
        dataSource.updateDataSource(messages)
    }
}
