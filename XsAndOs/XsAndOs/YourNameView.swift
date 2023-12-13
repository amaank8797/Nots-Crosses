//
//  YourNameView.swift
//  XsAndOs
//
//  Created by Amaan Amaan on 13/12/23.
//

import SwiftUI

struct YourNameView: View {
    @AppStorage("yourName") var yourName = ""
    @State private var userName = ""
    var body: some View {
        VStack {
            Text("This is the name that will be associated with this device")
            TextField("Yourname", text: $userName)
                .textFieldStyle(.roundedBorder)
            Button("Set"){
                yourName = userName
            }
            .buttonStyle(.borderedProminent)
            .disabled(userName.isEmpty)
            Image("LaunchScreen")
            Spacer()
        }
        .padding()
        .navigationTitle("Xs and Os")
        .inNavigationStack()
    }
}

#Preview {
    YourNameView()
}
