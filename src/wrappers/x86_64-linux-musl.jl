# Autogenerated wrapper script for SDL2_mixer_jll for x86_64-linux-musl
export libsdl2_mixer

using SDL2_jll
using libvorbis_jll
using FLAC_jll
using mpg123_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `libsdl2_mixer`
const libsdl2_mixer_splitpath = ["lib", "libSDL2_mixer.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libsdl2_mixer_path = ""

# libsdl2_mixer-specific global declaration
# This will be filled out by __init__()
libsdl2_mixer_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libsdl2_mixer = "libSDL2_mixer-2.0.so.0"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"SDL2_mixer")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (SDL2_jll.PATH_list, libvorbis_jll.PATH_list, FLAC_jll.PATH_list, mpg123_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (SDL2_jll.LIBPATH_list, libvorbis_jll.LIBPATH_list, FLAC_jll.LIBPATH_list, mpg123_jll.LIBPATH_list,))

    global libsdl2_mixer_path = normpath(joinpath(artifact_dir, libsdl2_mixer_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libsdl2_mixer_handle = dlopen(libsdl2_mixer_path)
    push!(LIBPATH_list, dirname(libsdl2_mixer_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

