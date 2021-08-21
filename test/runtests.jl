using BitTwiddlingConvenienceFunctions: intlog2, nextpow2, prevpow2
using Test

@testset "BitTwiddlingConvenienceFunctions.jl" begin

  @test all(i ->  HostCPUFeatures.intlog2(1 << i) == i, 0:(Int == Int64 ? 53 : 30))
  @test all(i -> HostCPUFeatures.nextpow2(i) == i, 0:2)
  for j in 1:10
    l, u = (1<<j)+1, 1<<(j+1)
    @test all(i -> HostCPUFeatures.nextpow2(i) == u, l:u)
  end

end
