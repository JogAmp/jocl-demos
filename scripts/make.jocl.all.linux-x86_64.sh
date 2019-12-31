#! /bin/sh

# $0 -Dmain.class=com.jogamp.opencl.demos.bitonicsort.BitonicSort run
# $0 -Dmain.class=com.jogamp.opencl.demos.julia3d.Julia3d run
# $0 -Dmain.class=com.jogamp.opencl.demos.joglinterop.GLCLInteroperabilityDemo run

export SOURCE_LEVEL=1.8
export TARGET_LEVEL=1.8
export TARGET_RT_JAR=/opt-share/jre1.8.0_212/lib/rt.jar

BUILD_ARCHIVE=true \
ant  \
    -Drootrel.build=build-x86_64 \
    $* 2>&1 | tee make.jogl.all.linux-x86_64.log
