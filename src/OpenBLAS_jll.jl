# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule OpenBLAS_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("OpenBLAS")
JLLWrappers.@generate_main_file("OpenBLAS", UUID("4536629a-c528-5b80-bd46-f80d51c5b363"))
end  # module OpenBLAS_jll
