import SwiftUI

// MARK: - Model
struct TextFile: Identifiable {
    let id = UUID()
    let title: String
    let filename: String
    let backgroundColor: Color
}

// MARK: - Sample Data
let textFiles: [TextFile] = [
    TextFile(title: "Chapter 1.1 - Spring", filename: "Chapter11", backgroundColor: .black),
    TextFile(title: "Chapter 1.2 - Praise Olympus!", filename: "Chapter12", backgroundColor: .black),
    TextFile(title: "Chapter 1.3 - The Haunted Caves", filename: "Chapter13", backgroundColor: .black),
    TextFile(title: "Chapter 2.1 - The Healings of Epidaurus", filename: "Candle", backgroundColor: .blue),
    TextFile(title: "Chapter 2.2 - Charming Dionysus", filename: "Dreaming", backgroundColor: .purple),
    TextFile(title: "Chapter 2.3 - The Moirae", filename: "Gate", backgroundColor: .green),
    TextFile(title: "Chapter 3.1 - The Dionysia", filename: "Candle", backgroundColor: .blue),
    TextFile(title: "Chapter 3.2 - Eleusinian Mysteries", filename: "Dreaming", backgroundColor: .purple),
    TextFile(title: "Chapter 3.3 - Summer Festivals", filename: "Gate", backgroundColor: .green),
    TextFile(title: "Chapter 4.1 - A Trip to Magna Grecia", filename: "Candle", backgroundColor: .blue),
    TextFile(title: "Chapter 4.2 - Kore", filename: "Dreaming", backgroundColor: .purple),
    TextFile(title: "Chapter 5.1 - The Thesmophoria I", filename: "Candle", backgroundColor: .blue),
    TextFile(title: "Chapter 5.2 - The Thesmophoria II", filename: "Dreaming", backgroundColor: .purple),
    TextFile(title: "Chapter 5.3 - The Thesmophoria III", filename: "Gate", backgroundColor: .green),
    TextFile(title: "Chapter 6.1 - Going Home", filename: "Candle", backgroundColor: .blue),
    TextFile(title: "Chapter 6.2 - The Patterns of Reality", filename: "Dreaming", backgroundColor: .purple),
    TextFile(title: "Chapter 6.3 - Land of Dreams", filename: "Gate", backgroundColor: .green),
    TextFile(title: "Chapter 7.1 - Politik", filename: "Candle", backgroundColor: .blue),
    TextFile(title: "Chapter 7.2 - The Cave of Hypnos", filename: "Dreaming", backgroundColor: .purple),
    TextFile(title: "Chapter 7.3 - Behind the Bronze Gates", filename: "Gate", backgroundColor: .green),
    TextFile(title: "Chapter 8.1 - The Blessed Isles", filename: "Candle", backgroundColor: .blue),
    TextFile(title: "Chapter 8.2 - Strife", filename: "Dreaming", backgroundColor: .purple),
    TextFile(title: "Chapter 8.3 - Through a Veil, Darkly", filename: "Gate", backgroundColor: .green),
    TextFile(title: "Chapter 9.1 - Inspired", filename: "Candle", backgroundColor: .blue),
    TextFile(title: "Chapter 9.2 - Joyfully Reborn", filename: "Dreaming", backgroundColor: .purple),
    TextFile(title: "Chapter 9.3 - The Unreality", filename: "Gate", backgroundColor: .green),
    TextFile(title: "Chapter 10.1 - Spring Fever", filename: "Candle", backgroundColor: .blue),
    TextFile(title: "Chapter 10.2 - The Silent Kingdom", filename: "Dreaming", backgroundColor: .purple),
    TextFile(title: "Chapter 10.3 - Chorus", filename: "Gate", backgroundColor: .green)
]

// MARK: - Main View
struct ContentView: View { 
    
    var body: some View {
        
        NavigationStack { 
            ZStack { 
                    ScrollView {
                        VStack(spacing: 20) {
                            ForEach(textFiles) { file in
                                NavigationLink(destination: TextFileView(file: file)) {
                                    Text(file.title)
                                        .font(.title2)
                                        .foregroundColor(.white)
                                        .padding()
                                        .frame(maxWidth: .infinity)
                                        .background(Color.white.opacity(0.2))
                                        .cornerRadius(10)
                                }
                                .padding(.horizontal)
                            }
                        }
                        .padding(.vertical)
                    } 
                } 
                .background(
                    Image("Cover")
                        .resizable()
                        .scaledToFill()
                        .ignoresSafeArea()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .multilineTextAlignment(.center))
                
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        VStack(spacing: 0) {
                            Text("The Gates of Horn and Ivory")
//                            Text("and Ivory")
                        }
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    }
                }
            } 
        } 
        
}
