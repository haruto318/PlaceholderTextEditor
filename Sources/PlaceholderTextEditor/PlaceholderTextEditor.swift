// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

public struct PlaceholderTextEditor: View {
    // MARK: - Parameters
    @Binding private var text: String
    private let placeholder: String
    
    // MARK: - Custom Editor Variables
    private var borderColor: Color = Color(UIColor.systemGray5)
    private var borderLineWidth: CGFloat = 1
    private var backgroundColor: Color = Color.clear
    private var inputTextColor: Color = Color.black
    private var placeholderColor: Color = Color.black
    
    // MARK: - Initializer
    public init(text: Binding<String>, placeholder: String) {
        self._text = text
        self.placeholder = placeholder
    }

    // MARK: - View
    public var body: some View {
        let editor = TextEditor(text: $text)
            .scrollContentBackground(.hidden)
            .foregroundColor(inputTextColor)
        
        ZStack(alignment: .topLeading) {
            editor
                
            Text(placeholder)
                .foregroundColor(placeholderColor)
                .opacity(text.isEmpty ? 0.3 : 0.0)
                .padding(.init(top: 9, leading: 8, bottom: 0, trailing: 0))
                .allowsHitTesting(false)
        }
        .background(backgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(borderColor, lineWidth: borderLineWidth)
        )
    }
}

// MARK: - Modifiers
extension PlaceholderTextEditor {
    // 枠線の色設定
    public func frameLineColor(_ color: Color) -> Self {
        var view = self
        view.borderColor = color
        return view
    }
    
    // 枠線の幅設定
    public func frameLineWidth(_ width: CGFloat) -> Self {
        var view = self
        view.borderLineWidth = width
        return view
    }
    
    // TextEditor内の色設定
    public func backgoundColor(_ color: Color) -> Self {
        var view = self
        view.backgroundColor = color
        return view
    }
    
    // 入力テキストの色設定
    public func inputTextColor(_ color: Color) -> Self {
        var view = self
        view.inputTextColor = color
        return view
    }
    
    // プレースホルダーのテキスト色設定
    public func placeholderColor(_ color: Color) -> Self {
        var view = self
        view.placeholderColor = color
        return view
    }
}
