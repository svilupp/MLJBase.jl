module TestSources

using MLJBase
using Test

X = 7

@test_logs (:warn, r"Source ") source(X, kind=:banana)

Xs = source(X)
@test Xs() == X
@test Xs(8) == 8
@test elscitype(Xs) == Count
@test scitype(Xs) == MLJBase.NodeScitype{Count}
rebind!(Xs, nothing)
@test isempty(Xs)
@test Xs.scitype == Unknown

end
true
