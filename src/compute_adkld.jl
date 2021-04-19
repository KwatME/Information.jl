function compute_adkld(
    v1::Vector{Float64},
    v2::Vector{Float64},
)::Vector{Float64}

    #
    d1 = compute_kld(v1, v2)

    d2 = compute_kld(v2, v1)

    #
    return d1 .- d2

end

export compute_adkld
