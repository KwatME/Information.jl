function compute_jsd(v_1::Vector{Float64}, v_2::Vector{Float64}, v::Vector{Float64})::Vector{Float64}

    kld_1 = compute_kld(v_1, v)

    kld_2 = compute_kld(v_2, v)

    return kld_1 .- kld_2

end

function compute_jsd(v_1::Vector{Float64}, v_2::Vector{Float64})::Vector{Float64}

    v = (v_1 .+ v_2) ./ 2

    return compute_jsd(v_1, v_2, v)

end

export compute_jsd
