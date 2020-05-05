# Autogenerated wrapper script for OpenBLAS_jll for x86_64-apple-darwin14-libgfortran5
export libopenblas

using CompilerSupportLibraries_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "DYLD_FALLBACK_LIBRARY_PATH"

# Relative path to `libopenblas`
const libopenblas_splitpath = ["lib", "libopenblas64_.0.3.9.dylib"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libopenblas_path = ""

# libopenblas-specific global declaration
# This will be filled out by __init__()
libopenblas_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libopenblas = "@rpath/libopenblas64_.dylib"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"OpenBLAS")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (CompilerSupportLibraries_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (CompilerSupportLibraries_jll.LIBPATH_list,))

    global libopenblas_path = normpath(joinpath(artifact_dir, libopenblas_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libopenblas_handle = dlopen(libopenblas_path)
    push!(LIBPATH_list, dirname(libopenblas_path))

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

