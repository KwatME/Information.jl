function compute_zd(
    v1::Vector{Float64},
    v2::Vector{Float64},
)::Vector{Float64}

    kld1 = compute_kld(v1, v2)

    kld2 = compute_kld(v2, v1)

    return kld1 .- kld2

end

export compute_zd
