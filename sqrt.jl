function Babylonian(x; N = 10)
    t = (1 + x)/2
    for i = 2:N
        t = (t + x/t)/2
    end
    t
end

# Test the algorithm
𝜕/𝜕x
β
ℯ
α = π
Babylonian(α), √α
x = 2; Babylonian(x), √x
@code_native(Babylonian(2)) # return assembly

using Plots
plotly()

i = 0:.01:49
plot([x -> Babylonian(x, N = i) for i = 1:5],
      i,
      label = ["Iteration $j" for i = 1:1, j = 1:5])
plot!(sqrt, i, c = "black", label = "sqrt",
      title = "Babylonian Algorithm Convergence to √x")