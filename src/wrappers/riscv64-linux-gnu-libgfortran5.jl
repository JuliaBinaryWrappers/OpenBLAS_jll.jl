# Autogenerated wrapper script for OpenBLAS_jll for riscv64-linux-gnu-libgfortran5
export libopenblas

using CompilerSupportLibraries_jll
JLLWrappers.@generate_wrapper_header("OpenBLAS")
JLLWrappers.@declare_library_product(libopenblas, "libopenblas64_.so")
function __init__()
    JLLWrappers.@generate_init_header(CompilerSupportLibraries_jll)
    JLLWrappers.@init_library_product(
        libopenblas,
        "lib/libopenblas64_.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
