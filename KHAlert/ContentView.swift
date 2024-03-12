//
//  ContentView.swift
//  KHAlert
//
//  Created by KANO on 3/6/24.
//

import SwiftUI

struct ContentView: View {
    @State var isShow:Bool = false
    
    var body: some View {
        ZStack {
            Button("버튼") {
                isShow.toggle()
            }
            
            if isShow {
                KHToast(toastText: "aaa", isShowing: $isShow)
            }
        }
        
        
    }
}

#Preview {
    ContentView()
}
