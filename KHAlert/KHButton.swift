//
//  KHButton.swift
//  KHAlert
//
//  Created by KANO on 3/7/24.
//

import SwiftUI

struct KHButton: View, Identifiable, Hashable {
    static func == (lhs: KHButton, rhs: KHButton) -> Bool {
        lhs.id == rhs.id
    }
    
   
    let id: UUID = UUID()
    let action: () -> Void
    var title:String
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    var body: some View {
        Button(title) {
            
        }.modifier(KHButtonStyle())
    }
}

struct KHButtonStyle:ViewModifier {
    
    
    func body(content: Content) -> some View {
        content.frame(maxWidth: .infinity, maxHeight: .infinity)
               .background(Color.blue)
               .foregroundColor(.white)
               .cornerRadius(12)
       }
    
    
}


#Preview {
    KHButton(action: {
        
    }, title: "KHButton")
}
