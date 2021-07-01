//
//  ProfileView.swift
//  LearningApp
//
//  Created by Алишер Алсейт on 25.06.2021.
//

import SwiftUI
import FirebaseAuth

struct ProfileView: View {
    @EnvironmentObject var model: ContentModel
    var body: some View {
        
        Button {
            
            try! Auth.auth().signOut()
            
            model.checkLogin()
        } label: {
            Text("Sign Out")
        }

    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
