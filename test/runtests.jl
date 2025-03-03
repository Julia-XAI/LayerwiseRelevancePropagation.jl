using RelevancePropagation

using Test
using JuliaFormatter
using Aqua

@testset verbose = true "RelevancePropagation.jl" begin
    @testset verbose = true "Linting" begin
        @info "Testing linting..."
        include("test_linting.jl")
    end
    @testset "Utilities" begin
        @info "Testing utilities..."
        include("test_utils.jl")
    end
    @testset "Flux utilities" begin
        @info "Testing chain utilities..."
        include("test_chain_utils.jl")
    end
    @testset "Canonize" begin
        @info "Testing model canonization..."
        include("test_canonize.jl")
    end
    @testset "Composites" begin
        @info "Testing LRP composites..."
        include("test_composite.jl")
    end
    @testset "Model checks" begin
        @info "Testing LRP model checks..."
        include("test_checks.jl")
    end
    @testset "LRP rules" begin
        @info "Testing LRP rules..."
        include("test_rules.jl")
    end
    @testset "CRP" begin
        @info "Testing CRP..."
        include("test_crp.jl")
    end
    @testset "CNN" begin
        @info "Testing analyzers on CNN..."
        include("test_cnn.jl")
    end
    @testset "Batches" begin
        @info "Testing analyzers on batches..."
        include("test_batches.jl")
    end
    @testset "Benchmark correctness" begin
        @info "Testing whether benchmarks are up-to-date..."
        include("test_benchmarks.jl")
    end
end
