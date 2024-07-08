import SwiftUI

@main struct InterviewApp: App { var body = WindowGroup { ContentView(count: 0) } }

// MARK: - Main View of the App

struct ContentView: View {
    let count: Int

    var body: some View {
        // let _ = Self._printChanges()
        Form {
            Section {
                // TODO: Add counter
                
                // TODO: Add + and - buttons
            } header: {
                Text("Counter")
            }
        }
        .padding(40)
    }

    func decrementButtonTapped() {
        // TODO: Implement decrementing
    }

    func incrementButtonTapped() {
        // TODO: Implement incrementing
    }
}

#Preview {
    ContentView(count: 0)
}
