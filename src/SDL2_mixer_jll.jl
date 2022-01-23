# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule SDL2_mixer_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("SDL2_mixer")
JLLWrappers.@generate_main_file("SDL2_mixer", UUID("7e88e5ca-120e-58e7-9660-b2187fd466c0"))
end  # module SDL2_mixer_jll
