//
//  ContentView.swift
//  Keychain
//
//  Created by Ziloliddin Kamolov on 22/01/23.
//

import SwiftUI
import SwiftKeychainWrapper

struct ContentView: View {
    
    @ObservedObject var defs = Defs()
    @State var text = "No data"
    
    init() {
        print(defs.loadUser() as Any)
        let user = User(email: "tester@gmail.com", password: "123qwe")
        defs.user = user
        print(defs.loadUser() as Any)
    }

    var body: some View {
        Text(defs.loadUser()!.email)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
