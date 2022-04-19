from distutils.core import setup, Extension
from Cython.Build import cythonize


sources = [
    "MyUtils.pyx",
    "SampleUtils.cpp",
]
name = "MyUtils"
ext = Extension(
    name,
    sources=sources,
    include_dirs=["."],
    extra_compile_args=["-std=c++17"],
    extra_link_args=["-std=c++17"],
)

setup(
    name=name,
    ext_modules=cythonize([ext], compiler_directives={"language_level": "3"}),
)
