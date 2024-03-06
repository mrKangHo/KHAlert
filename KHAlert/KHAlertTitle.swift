//
//  KHAlertTitle.swift
//  KHAlert
//
//  Created by KANO on 3/6/24.
//

import SwiftUI

extension KHAlert {
    struct KHAlertTitle: View {
        let title:String
        var body: some View {
            Text(title)
        }
    }
}

#Preview {
    KHAlert.KHAlertTitle(title: "나는제목이야")
}
