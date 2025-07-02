import SwiftUI
import PlaceholderTextEditor

struct ContentView: View {
    @State private var text1 = ""
    @State private var text2 = ""
    @State private var text3 = ""
    @State private var text4 = ""
    
    var body: some View {
        ScrollView {
            VStack(spacing: 30) {
                VStack(alignment: .leading) {
                    Text("☑️ 1. Default")
                    PlaceholderTextEditor(text: $text1, placeholder: "こちらに入力してください")
                        .frame(height: 100)
                }
                
                VStack(alignment: .leading) {
                    Text("☑️ 2. Custom Frame Line Color & Width")
                    PlaceholderTextEditor(text: $text2, placeholder: "こちらに入力してください")
                        .frameLineColor(Color.blue)
                        .frameLineWidth(5)
                        .frame(height: 100)
                }
                
                VStack(alignment: .leading) {
                    Text("☑️ 3. Change Background Color")
                    PlaceholderTextEditor(text: $text3, placeholder: "こちらに入力してください")
                        .backgoundColor(Color.green)
                        .frame(height: 100)
                }
                
                VStack(alignment: .leading) {
                    Text("☑️ 4. Custom Input text & Placeholder Color")
                    PlaceholderTextEditor(text: $text4, placeholder: "こちらに入力してください")
                        .inputTextColor(Color.blue)
                        .placeholderColor(Color.red)
                        .frame(height: 100)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
