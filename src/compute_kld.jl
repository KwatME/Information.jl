include("Type.jl")

function compute_kld(v_1::Real_, v_2::Real_)::Float_

    return v_1 .* log.(v_1 ./ v_2)

end

export compute_kld
