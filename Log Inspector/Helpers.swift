//
//  Helpers.swift
//  Log Inspector
//
//  Created by Andrew Forget on 2024-07-12.
//

import SwiftUI

extension Binding {
    func onChange(_ handler: @escaping (Value) -> Void) -> Binding<Value> {
        Binding(
            get: { self.wrappedValue },
            set: { newValue in
                self.wrappedValue = newValue
                handler(newValue)
            }
        )
    }
}

//extension View {
//    @ViewBuilder func onValueChanged<T: Equatable>(value: T, onChange: @escaping (T) -> Void) -> some View {
//        if #available(macOS 14.0, *) {
//            self.onChange(of: value) { oldValue, newValue in
//                onChange(newValue)
//            }
//        } else {
//            self.onReceive(Just(value)) { (value) in
//                onChange(value)
//            }
//        }
//    }
//}
