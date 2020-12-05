function compute_zd(
    v_1::Vector{<:Real},
    v_2::Vector{<:Real},
)::Tuple{Vector{Float64}, Vector{Float64}, Vector{Float64}}

    kld_1 = compute_kld(v_1, v_2)

    kld_2 = compute_kld(v_2, v_1)

    return kld_1, kld_2, kld_1 .- kld_2

end


export compute_zd