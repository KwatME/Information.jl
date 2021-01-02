Real_ = Vector{<:Real}

Float_ = Vector{Float64}

function compute_zd(v_1::Real_, v_2::Real_)::Float_

    kld_1 = compute_kld(v_1, v_2)

    kld_2 = compute_kld(v_2, v_1)

    return kld_1 .- kld_2

end

export compute_zd
