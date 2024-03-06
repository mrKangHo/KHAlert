//
//  KHAlertMessege.swift
//  KHAlert
//
//  Created by KANO on 3/6/24.
//

import SwiftUI

extension KHAlert {
    struct KHAlertMessege: View {
        
        let messege:String
        
        var body: some View {
            Text(messege)
        }
    }
}

#Preview {
    KHAlert.KHAlertMessege(messege: "안녕 나는 메세지야")
}
