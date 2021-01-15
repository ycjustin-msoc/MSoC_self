<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="com.autoesl.autopilot.project" name="hls_pid_prj" top="PID_Controller">
  <files>
    <file name="../../C/test_xapp_pid.cpp" sc="0" tb="1" cflags=" -DPID_DEBUG -Wno-unknown-pragmas" blackbox="false" csimflags=" -Wno-unknown-pragmas"/>
    <file name="../../C/test_data" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" blackbox="false" csimflags=" -Wno-unknown-pragmas"/>
    <file name="C/xapp_pid.cpp" sc="0" tb="false" cflags="-DPID_DEBUG" blackbox="false" csimflags=""/>
  </files>
  <solutions>
    <solution name="solution_double" status="inactive"/>
    <solution name="solution_double1" status="active"/>
  </solutions>
  <includePaths/>
  <libraryPaths/>
  <Simulation>
    <SimFlow name="csim"/>
  </Simulation>
</project>
