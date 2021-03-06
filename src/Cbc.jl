
module Cbc

if isfile(joinpath(Pkg.dir("Cbc"),"deps","deps.jl"))
    include("../deps/deps.jl")
else
    error("Cbc not properly installed. Please run Pkg.build(\"Cbc\")")
end



include("CoinMPInterface.jl")
include("CbcSolverInterface.jl")

using Cbc.CbcMathProgSolverInterface
export CbcSolver

end # module
