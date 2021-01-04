function compute_jsd(v1::Vector{Float64}, v2::Vector{Float64}, v::Vector{Float64})::Vector{Float64}

    return compute_kld(v1, v) .- compute_kld(v2, v)

end

function compute_jsd(v1::Vector{Float64}, v2::Vector{Float64})::Vector{Float64}

    return compute_jsd(v1, v2, (v1 .+ v2) ./ 2)

end

export compute_jsd
