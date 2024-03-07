//
//  KHAlert.swift
//  KHAlert
//
//  Created by KANO on 3/6/24.
//

import SwiftUI

struct KHAlert: View {
    
    @Binding var presentAlert: Bool
    
    var titleView:KHAlertTitle?
    var messegeView:KHAlertMessege?
    var buttonViews:[KHButton]?
    
        
    
    var body: some View {
        Color.black.opacity(0.4)
            .ignoresSafeArea().overlay {
                VStack {
                    titleView
                    messegeView
                    if let buttons = buttonViews {
                        HStack {
                            ForEach(buttons, id: \.self) { button in
                                button
                                    .frame(maxWidth: .infinity)
                                    .frame(height: 50)
                                    
                            }
                            
                        }
                    }
                    
                }.padding(EdgeInsets(top: 12, leading: 12, bottom: 12, trailing: 12)).frame(width: UIScreen.main.bounds.width - 80).background(.white).clipShape(.rect(cornerRadius: 12)).shadow(radius: 10)
            }
    }
}

#Preview {
    KHAlert(presentAlert: .constant(true), 
            titleView: KHAlert.KHAlertTitle(title: "제목입니다"),
            messegeView: KHAlert.KHAlertMessege(messege: "메세지입니다."),
            buttonViews: [KHButton(action: {
        
    }, title: "왼쪽"),
                          KHButton(action: {
        
    }, title: "오른쪽")])
}
