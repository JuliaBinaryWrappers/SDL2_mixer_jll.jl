# Autogenerated wrapper script for SDL2_mixer_jll for aarch64-linux-musl
export libsdl2_mixer

using SDL2_jll
using libvorbis_jll
using FLAC_jll
using mpg123_jll
JLLWrappers.@generate_wrapper_header("SDL2_mixer")
JLLWrappers.@declare_library_product(libsdl2_mixer, "libSDL2_mixer-2.0.so.0")
function __init__()
    JLLWrappers.@generate_init_header(SDL2_jll, libvorbis_jll, FLAC_jll, mpg123_jll)
    JLLWrappers.@init_library_product(
        libsdl2_mixer,
        "lib/libSDL2_mixer.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
