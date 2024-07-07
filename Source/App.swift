import SwiftUI

@main struct InterviewApp: App { var body = WindowGroup(content: ContentView.init) }

// MARK: - Main View of the App

struct ContentView: View {
    var body: some View {
        Text("Hi!")
    }
}

#Preview {
    ContentView()
}
