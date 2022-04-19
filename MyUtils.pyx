# distutils: language = c++


cdef extern from "SampleUtils.hpp":
    void sampleFn(char* text)
    int sampleFn2(int x, int y)

def __sampleFn(str text):
    _text = text.encode("utf-8")
    cdef:
        char* __text = _text

    sampleFn(__text)

def __sampleFn2(int x, int y):
    cdef:
        int res;
    res = sampleFn2(x, y)
    return res
