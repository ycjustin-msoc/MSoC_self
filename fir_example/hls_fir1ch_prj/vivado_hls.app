<project xmlns="com.autoesl.autopilot.project" name="hls_fir1ch_prj" top="fir_filter">
    <includePaths/>
    <libraryPaths/>
    <Simulation argv="">
        <SimFlow name="csim" ldflags="" mflags="" clean="true" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../../fir_test.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../../data" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="fir.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution0" status="inactive"/>
        <solution name="solution0_b" status="inactive"/>
        <solution name="solution0_c" status="inactive"/>
        <solution name="solution0_d_new" status="inactive"/>
        <solution name="solution_e_new" status="inactive"/>
        <solution name="solution1_a" status="active"/>
    </solutions>
</project>

