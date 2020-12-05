function compute_kld(v_1::Vector{<:Real}, v_2::Vector{<:Real})::Vector{Float64}

    return v_1 .* log.(v_1 ./ v_2)

end


export compute_kld