//Marlvin Goremusandu
import SwiftUI

struct Quote: Identifiable {
    let id = UUID()
    let author: String
    let text: String
}

struct ContentView: View {
    let quotes = [
        Quote(author: "Steve Jobs", text: "Your time is limited, so don't waste it living someone else's life. Don't be trapped by dogma – which is living with the results of other people's thinking."),
        Quote(author: "Walt Disney", text: "The way to get started is to quit talking and begin doing"),
        Quote(author: "Albert Einstein", text: "Imagination is more important than knowledge."),
        Quote(author: "Maya Angelou", text: "You can't use up creativity. The more you use, the more you have."),
        Quote(author: "Steve Jobs", text: "Design is not just what it looks like and feels like. Design is how it works."),
        Quote(author: "Thomas Edison", text: "I have not failed. I've just found 10,000 ways that won't work."),
        Quote(author: "Eleanor Roosevelt", text: "If life were predictable it would cease to be life, and be without flavor"),
        
    ]
    
    var body: some View {
        NavigationView {
            List(quotes) { quote in
                NavigationLink(destination: QuoteDetailView(quote: quote)) {
                    VStack(alignment: .leading) {
                        Text(quote.author)
                            .font(.headline)
                            .foregroundColor(Color.purple)
                        Text(quote.text)
                            .font(.subheadline)
                            .foregroundColor(Color.purple.opacity(0.7))
                            .padding(.top, 8)
                    }
                    .padding(.vertical)
                }
            }
            .navigationTitle("Famous Quotes")
            .navigationBarItems(trailing: Image(systemName: "quote.bubble.fill").foregroundColor(.purple).font(.title))
        }
    }
}

struct QuoteDetailView: View {
    let quote: Quote
    
    var body: some View {
        VStack {
            Spacer()
            Text(quote.author)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.purple)
            Text(quote.text)
                .font(.title)
                .italic()
                .multilineTextAlignment(.center)
                .padding()
                .foregroundColor(Color.purple.opacity(0.7))
            Spacer()
        }
        .padding()
        .background(Color.yellow.edgesIgnoringSafeArea(.all))
        .navigationBarTitle("Quote by \(quote.author)", displayMode: .inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

