//
//  KHAlertButton.swift
//  KHAlert
//
//  Created by KANO on 3/6/24.
//

import SwiftUI

extension KHAlert {
    struct KHAlertButton: View, Identifiable, Hashable {
        let id: UUID = UUID()
        
        let title:String
        var body: some View {
            Button(title) {
                
            }
        }
    }
}

#Preview {
    KHAlert.KHAlertButton(title: "버튼1")
}
