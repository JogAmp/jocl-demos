
CP=/usr/local/projects/JogAmp/jocl/build-x86_64/jar/jocl.jar:/usr/local/projects/JogAmp/jogl/build-x86_64/jar/jogl-all.jar:/usr/local/projects/JogAmp/gluegen/build-x86_64/gluegen-rt.jar:/usr/local/projects/JogAmp/jocl-demos/build-x86_64/classes

#TEST=com.jogamp.opencl.demos.bitonicsort.BitonicSort
TEST=com.jogamp.opencl.demos.joglinterop.GLCLInteroperabilityDemo
# Crash .. 
#TEST=com.jogamp.opencl.demos.julia3d.Julia3d

java -classpath $CP \
     -Djogamp.debug=all \
   $TEST \
   2>&1 | tee run.log

