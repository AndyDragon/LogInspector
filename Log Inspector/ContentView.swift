//
//  ContentView.swift
//  Log Inspector
//
//  Created by Andrew Forget on 2024-07-12.
//

import SwiftUI

struct ContentView: View {
    @State private var showDirectoryPicker = false
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Button(action: {
                showDirectoryPicker.toggle()
            }) {
                Text("Open folder...")
            }
            .fileImporter(isPresented: $showDirectoryPicker, allowedContentTypes: [.json, .directory], onCompletion: { result in
                // load from directory...
            })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
