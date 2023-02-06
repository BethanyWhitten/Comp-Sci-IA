import SwiftUI

struct ContentView: View {
    @State var mainPage = true
    @State var namePage = false
    @State var competePage = false
    @State var statPage = false
    @State var historyPage = false
    @State var settingsPage = false
    @State private var nameTemp: String = ""
    @State var namesList: [String] = ["a", "b", "c", "d", "e"]
    let currentDate = Date.now.addingTimeInterval(-18000)
    
    var body: some View {
        
        
        VStack (alignment: .center) {
            
            if(mainPage){
                Text("Fencing App Title\n")
                Button("Add Names\n"){
                    namePage = true
                    mainPage = false
                }
                
                Button("Compete\n"){
                    competePage = true
                    mainPage = false
                }
                Button("Player Stats\n"){
                    statPage = true
                    mainPage = false
                }
                Button("History\n"){
                    historyPage = true
                    mainPage = false
                    print(currentDate)
                }
                Button("Settings\n"){
                    settingsPage = true
                    mainPage = false
                }
            }
            
            if(namePage || competePage || statPage || historyPage || settingsPage){
                Button("Back\n"){
                    namePage = false
                    competePage = false
                    statPage = false
                    historyPage = false
                    settingsPage = false
                    mainPage = true
                }
            }
            
            if(namePage){
                Text("Input Name:")
                TextField(
                    "ENTER NAME HERE",
                    text: $nameTemp,
                    onCommit: {
                        namesList.append(nameTemp)
                        print(namesList) // to see if adding
                    }
                ).padding()
                
            }
            
            if(settingsPage){
                Text("Here are some settings:\n")
                Text("Here's some more.\n")
            }
        }
    }
}
