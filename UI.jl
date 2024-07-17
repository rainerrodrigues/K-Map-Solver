using Plots

#For simplicity, considering a 2x2 table
table = [
    0 1;
    0 1
]

p = heatmap(table, c=:blues, xrotation = 0,yflip = true,aspect_ratio =:equal,color=:viridis,axis=false,title="K-Map")

for i in 1:size(table,1)
    for j in 1:size(table,2)
        annotate!(j-0.5,i-0.5,text(string(table[i,j]),:white,:center))
    end
end

display(p)