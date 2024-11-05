import Foundation

class Solution {
    func tournamentWinner(_ competitions: [[String]], _ results: [Int]) -> String {
        var bestTeam = ""
        var teamsScoresHashTable: [String: Int] = [ bestTeam : 0 ]
        var resultIndex = 0
        for competition in competitions {
            
            var homeTeam = competition[0]
            var awayTeam = competition[1]
            var currentMatchResult = results[resultIndex]
            var homeTeamHasWon = currentMatchResult == 1
            
            if homeTeamHasWon {
                if teamsScoresHashTable[homeTeam] != nil {
                    teamsScoresHashTable[homeTeam]! += 3
                } else {
                    teamsScoresHashTable[homeTeam] = 3
                }
                if let bestTeamScore = teamsScoresHashTable[bestTeam] {
                    if teamsScoresHashTable[homeTeam]! > bestTeamScore {
                        bestTeam = homeTeam
                    }
                }
            } else {
                if teamsScoresHashTable[awayTeam] != nil {
                    teamsScoresHashTable[awayTeam]! += 3
                } else {
                    teamsScoresHashTable[awayTeam] = 3
                }
                if let bestTeamScore = teamsScoresHashTable[bestTeam] {
                    if teamsScoresHashTable[awayTeam]! > bestTeamScore {
                        bestTeam = awayTeam
                    }
                }
            }
            resultIndex += 1
        }
        return bestTeam
    }
}

let solution = Solution()
solution.tournamentWinner([
    ["HTML", "C#"],
    ["C#", "Python"],
    ["Python", "HTML"]
  ], [0, 0, 1])

