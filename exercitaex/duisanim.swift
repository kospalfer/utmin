import SwiftUI

struct ContentView: View {
    @State private var currentTime = Date()

    var body: some View {
        TimelineView(.everyMinute) { context in
            Text("\(context.date, formatter: DateFormatter.timeOnly())")
                .font(.largeTitle)
                .onAppear {
                    // Update the current time when the view appears
                    currentTime = context.date
                }
        }
    }
}
