import SwiftUI

struct TextFileView: View {
    let file: TextFile
    @State private var fileContent: String = ""
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 20) {
                Text(file.title)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                ScrollView {
                    Text(fileContent)
                        .font(.body)
                        .foregroundColor(.white)
                        .padding(.top)
                }
                .padding()
                .background(Color.white.opacity(0.2))
                .cornerRadius(10)
            }
        }
        .background(
            Image("background")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .multilineTextAlignment(.center))
        .onAppear {
            loadTextFile(named: file.filename)
        }
    }
    
    func loadTextFile(named filename: String) {
        if let path = Bundle.main.path(forResource: filename, ofType: "txt"),
           let content = try? String(contentsOfFile: path) {
            fileContent = content
        } else {
            fileContent = "⚠️ Could not load \(filename).txt"
        }
    }
}
