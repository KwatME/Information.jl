Real_ = Vector{<:Real}

Float_ = Vector{Float64}

function compute_jsd(v_1::Real_, v_2::Real_, v::Real_)::Float_

    kld_1 = compute_kld(v_1, v)

    kld_2 = compute_kld(v_2, v)

    return kld_1 .- kld_2

end

function compute_jsd(v_1::Real_, v_2::Real_)::Float_

    v = (v_1 .+ v_2) ./ 2

    return compute_jsd(v_1, v_2, v)

end

export compute_jsd
