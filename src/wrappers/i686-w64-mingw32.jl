# Autogenerated wrapper script for SDL2_mixer_jll for i686-w64-mingw32
export libsdl2_mixer

using SDL2_jll
JLLWrappers.@generate_wrapper_header("SDL2_mixer")
JLLWrappers.@declare_library_product(libsdl2_mixer, "SDL2_mixer.dll")
function __init__()
    JLLWrappers.@generate_init_header(SDL2_jll)
    JLLWrappers.@init_library_product(
        libsdl2_mixer,
        "bin\\SDL2_mixer.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
