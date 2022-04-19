.PHONY:	compile	sample-run	pycompile
.SILENT:
compile:
	g++ -std=c++17 -o SampleUtils.o -c SampleUtils.cpp

sample-run:
	g++ -std=c++17 -o main.o -c Main.cpp && g++ -std=c++11 -o MAIN main.o SampleUtils.o && ./MAIN

pycompile:
	python3 setup.py build_ext --inplace
