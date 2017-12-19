

// Player data

let joeSmith: [String: String] = ["name": "Joe Smith",
                                  "height": "42",
                                  "soccerExp": "YES",
                                  "guardianName": "Jim and Jan Smith"]

let jillTanner: [String: String] = ["name": "Jill Tanner",
                                    "height": "36",
                                    "soccerExp": "YES",
                                    "guardianName": "Clara Tanner"]

let billBon: [String: String] = ["name": "Bill Bon",
                                 "height": "43",
                                 "soccerExp": "YES",
                                 "guardianName": "Sara and Jenny Bon"]

let evaGordon: [String: String] = ["name": "Eva Gordon",
                                   "height": "45",
                                   "soccerExp": "NO",
                                   "guardianName": "Wendy and Mike Gordon"]

let mattGill: [String: String] = ["name": "Matt Gill",
                                  "height": "40",
                                  "soccerExp": "NO",
                                  "guardianName": "Charles and Sylvia Gill"]

let kimmyStein: [String: String] = ["name": "Kimmy Stein",
                                    "height": "41",
                                    "soccerExp": "NO",
                                    "guardianName": "Bill and Hillary Stein"]

let sammyAdams: [String: String] = ["name": "Sammy Adams",
                                    "height": "45",
                                    "soccerExp": "NO",
                                    "guardianName": "Jeff Adams"]

let karlSaygan: [String: String] = ["name": "Karl Saygan",
                                    "height": "42",
                                    "soccerExp": "YES",
                                    "guardianName": "Heather Bledsoe"]

let suzaneGreenberg: [String: String] = ["name": "Suzane Greenberg",
                                         "height": "44",
                                         "soccerExp": "YES",
                                         "guardianName": "Henrietta Dumas"]

let salDali: [String: String] = ["name": "Sal Dali",
                                 "height": "41",
                                 "soccerExp": "NO",
                                 "guardianName": "Gala Dali"]

let joeKavalier: [String: String] = ["name": "Joe Kavalier",
                                     "height": "39",
                                     "soccerExp": "NO",
                                     "guardianName": "Sam and Elaine Kavalier"]

let benFinkelstein: [String: String] = ["name": "Ben Finkelstein",
                                        "height": "44",
                                        "soccerExp": "NO",
                                        "guardianName": "Aaron and Jill Finkelstein"]

let diegoSoto: [String: String] = ["name": "Diego Soto",
                                   "height": "41",
                                   "soccerExp": "YES",
                                   "guardianName": "Robin and Sarika Soto"]

let chloeAlaska: [String: String] = ["name": "Chloe Alaska",
                                     "height": "47",
                                     "soccerExp": "NO",
                                     "guardianName": "David and Jamie Alaska"]

let arnoldWillis: [String: String] = ["name": "Arnold Willis",
                                      "height": "43",
                                      "soccerExp": "NO",
                                      "guardianName": "Claire Willis"]

let phillipHelm: [String: String] = ["name": "Phillip Helm",
                                     "height": "44",
                                     "soccerExp": "YES",
                                     "guardianName": "Thomas Helm and Eva Jones"]

let lesClay: [String: String] = ["name": "Les Clay",
                                 "height": "42",
                                 "soccerExp": "YES",
                                 "guardianName": "Wynonna Brown"]

let herschelKrustofski: [String: String] = ["name": "Herschel Krustofski",
                                            "height": "45",
                                            "soccerExp": "YES",
                                            "guardianName": "Hyman and Rachel Krustofski"]

// Creating collection of all players

var players = [joeSmith, jillTanner, billBon, evaGordon, mattGill, kimmyStein, sammyAdams, karlSaygan, suzaneGreenberg, salDali, joeKavalier, benFinkelstein, diegoSoto, chloeAlaska, arnoldWillis, phillipHelm, lesClay, herschelKrustofski]

// Creating team collections

var expTeam = [[String: String]]()
var nonExpTeam = [[String: String]]()

var teamDragons: [[String: String]] = []
var teamSharks: [[String: String]] = []
var teamRaptors: [[String: String]] = []


var playerHeights: [[String: String]]

playerHeights = players.sorted(by: {$0["height"]! < $1["height"]!})

// Sorting into experienced and non-experienced

for player in players {
    if player["soccerExp"]! == "YES" {
        expTeam.append(player)
    } else if player["soccerExp"]! == "NO" {
        nonExpTeam.append(player)
    }
}

// Filtering experienced players into 3 teams

for expPlayer in expTeam {
    if teamDragons.count <= teamSharks.count {
        teamDragons.append(expPlayer)
    } else if teamSharks.count < teamRaptors.count {
        teamSharks.append(expPlayer)
    } else {
        teamRaptors.append(expPlayer)
    }
}

for rookiePlayer in nonExpTeam {
    if teamDragons.count < teamSharks.count {
        teamDragons.append(rookiePlayer)
    } else if teamSharks.count < teamRaptors.count {
        teamSharks.append(rookiePlayer)
    } else {
        teamRaptors.append(rookiePlayer)
    }
}

// Creating variables for dates and times of practice

var dragonPractice = "17th March at 1pm"
var sharkPractice = "17th March at 3pm"
var raptorPractice = "18th March at 1pm"

// Creating letter collection variable
var letters = [String]()

// Creating and personalising letters
for player in teamDragons {
    let dragonLetter = "Hello, \(player["guardianName"]!)! \(player["name"]!) has been chosen to play on Team Dragons! Their next practice is on \(dragonPractice). We'll see them there!"
    letters.append(dragonLetter)
    
}
for player in teamSharks {
    let sharkLetter = "Hello, \(player["guardianName"]!)! \(player["name"]!) has been chosen to play on Team Sharks! Their next practice is on \(sharkPractice). We'll see them there!"
    letters.append(sharkLetter)
}
for player in teamRaptors {
    let raptorLetter = "Hello, \(player["guardianName"]!)! \(player["name"]!) has been chosen to play on Team Raptors! Their next practice is on \(raptorPractice). We'll see them there!"
    letters.append(raptorLetter)
}

// Printing formatted letters to console
for letter in letters {
    print(letter)
}

// Logic for average height within teams

func calculateAverageHeight(team: [[String: String]]) -> Double {
    var totalHeight = 0.0
    
    for player in team {
        totalHeight = totalHeight + Double(player["height"]!)!
        
    }
    
    return totalHeight / Double(team.count)
}

// Printing average height
print(calculateAverageHeight(team: teamDragons))
print(calculateAverageHeight(team: teamSharks))
print(calculateAverageHeight(team: teamRaptors))

//Difference between teams

func calculateDifferenceInHeight(team1: Double, team2: Double) -> Bool {
    var height = 0.0
    var withinRange = false
    
    height = team1 - team2
    
    if height > 1.5 || height < -1.5 {
        withinRange = false
    } else {
        withinRange = true
    }
    
    return withinRange
    
}

calculateDifferenceInHeight(team1: calculateAverageHeight(team: teamDragons), team2: calculateAverageHeight(team: teamSharks))
calculateDifferenceInHeight(team1: calculateAverageHeight(team: teamDragons), team2: calculateAverageHeight(team: teamRaptors))
calculateDifferenceInHeight(team1: calculateAverageHeight(team: teamRaptors), team2: calculateAverageHeight(team: teamSharks))












