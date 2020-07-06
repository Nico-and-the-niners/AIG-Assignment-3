using Pkg
Pkg.add(PackageSpec(url="https://github.com/QuantEcon/Games.jl"))

using Games

import Pkg; Pkg.add("Clp")
using Clp

SimGame = NormalFormGame((2, 2))  # There are 2 players, each of whom has 2 actions
SimGame[1, 1] = [8, -2]
SimGame[1, 2] = [6, 2]
SimGame[2, 1] = [3, 3]
SimGame[2, 2] = [7, 2];

SimGame.players[1].payoff_array

SimGame.players[2].payoff_array

function print_pure_nash_brute(g::NormalFormGame)
    NEs = pure_nash(g)
    num_NEs = length(NEs)
    if num_NEs == 0
        msg = "no pure Nash equilibrium"
    elseif num_NEs == 1
        msg = "1 pure Nash equilibrium:\n$(NEs[1])"
    else
        msg = "$num_NEs pure Nash equilibria:\n"
        for (i, NE) in enumerate(NEs)
            i < num_NEs ? msg *= "$NE, " : msg *= "$NE"
        end
    end
    println(join(["The game has ", msg]))
end

print_pure_nash_brute(SimGame)

best_response(SimGame.players[1], 2)

action = is_dominated(SimGame.players[1], 2; tol=1e-1,
                  lp_solver=() -> Clp.Optimizer(LogLevel=00))












