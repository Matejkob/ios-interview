import SwiftUI

@main struct InterviewApp: App { var body = WindowGroup(content: ContentView.init) }

// MARK: - Main View of the App

struct ContentView: View {
    @State var count: Int

    var body: some View {
        // let _ = Self._printChanges()
        Form {
            Section {
                Text(self.count.description)
                Button("Decrement") { decrementButtonTapped() }
                Button("Increment") { incrementButtonTapped() }
            } header: {
                Text("Counter")
            }
        }
    }

    func decrementButtonTapped() {
        count -= 1
    }

    func incrementButtonTapped() {
        count += 1
    }
}

#Preview {
    ContentView(count: 0)
}

/*
 var body: some View {
 // let _ = Self._printChanges()
 Form {
 Section {
 Text(self.count.description)
 Button("Decrement") { decrementButtonTapped() }
 Button("Increment") { incrementButtonTapped() }
 } header: {
 Text("Counter")
 }
 }
 }
 */
