<project xmlns="com.autoesl.autopilot.project" name="proj_memory_porting_and_ii" top="matrixmul">
    <includePaths/>
    <libraryPaths/>
    <libraryFlag/>
    <Simulation>
        <SimFlow name="csim" clean="true" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../../matrixmul_test.cpp" sc="0" tb="1" cflags=" -DHW_COSIM -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="matrixmul.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="inactive"/>
        <solution name="solution2" status="inactive"/>
        <solution name="solution3" status="active"/>
    </solutions>
</project>

