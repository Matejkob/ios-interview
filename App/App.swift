import SwiftUI

@main struct InterviewApp: App { var body = WindowGroup { ContentView(count: 0) } }

// MARK: - Main View of the App

struct ContentView: View {
    let count: Int

    var body: some View {

        UIKitControllerRepresentable()
    }

    func decrementButtonTapped() {
        // TODO: Implement decrementing
    }

    func incrementButtonTapped() {
        // TODO: Implement incrementing
    }
}

import UIKit
import Combine

final class ViewModel: ObservableObject {
    @Published var count = 0

    init() {
        while true {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
                self.count += 1
            })
        }
    }
}

class SimpleViewController: UIViewController {
    private var viewModel = ViewModel()
    private var cancellables = Set<AnyCancellable>()
    private var countLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue

        setupLabel()
        bindViewModel()
    }

    private func setupLabel() {
        countLabel = UILabel()
        countLabel.textColor = .white
        countLabel.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        countLabel.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(countLabel)

        NSLayoutConstraint.activate([
            countLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            countLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    private func bindViewModel() {
        viewModel.$count
            .receive(on: DispatchQueue.main)
            .sink { [weak self] count in
                self?.countLabel.text = "Count: \(count)"
            }
            .store(in: &cancellables)
    }
}

struct UIKitControllerRepresentable: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> SimpleViewController {
        return SimpleViewController()
    }

    func updateUIViewController(_ uiViewController: SimpleViewController, context: Context) {
        // Update the view controller if needed
    }
}

#Preview {
    ContentView(count: 0)
}
