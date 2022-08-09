# There's an algorithms tournament taking place in which teams of programmers
# compete against each other to solve algorithmic problems as fast as possible.
# Teams compete in a round robin, where each team faces off against all other
# teams. Only two teams compete against each other at a time, and for each
# competition, one team is designated the home team, while the other team is the
# away team. In each competition there's always one winner and one loser; there
# are no ties. A team receives 3 points if it wins and 0 points if it loses. The
# winner of the tournament is the team that receives the most amount of points.
# It's guaranteed that exactly one team will win the tournament and that each
# team will compete against all other teams exactly once. It's also guaranteed
# that the tournament will always have at least two teams.

def tournamentWinner(competitions, results):
    teams_list = [item for sublist in competitions for item in sublist]
    teams_results = dict.fromkeys(teams_list, 0)

    for teams in competitions:
        result = results[competitions.index(teams)]
        if result == 0:
            teams_results[teams[1]] += 1
        else:
            teams_results[teams[0]] += 1
    return max(teams_results, key = teams_results.get)
