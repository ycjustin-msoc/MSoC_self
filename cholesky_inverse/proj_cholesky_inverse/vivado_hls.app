<project xmlns="com.autoesl.autopilot.project" name="proj_cholesky_inverse" top="cholesky_inverse_top">
    <includePaths/>
    <libraryPaths/>
    <libraryFlag/>
    <Simulation argv="">
        <SimFlow name="csim" ldflags="" mflags="" clean="true" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../../cholesky_inverse_tb.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="cholesky_inverse.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="inactive"/>
        <solution name="solution2" status="inactive"/>
        <solution name="solution3" status="inactive"/>
        <solution name="solution3_fpga" status="active"/>
    </solutions>
</project>

