
rem Clean up the results directory
rmdir /S /Q results
mkdir results

rem Synthesize the Verilog Wrapper Files
echo 'Synthesizing verilog example design with XST';
xst -ifn xst.scr
copy ethernet_example_design.ngc .\results\

rem Copy the EDIF's generated by Coregen
echo 'Copying files from the netlist directory to the results directory'
copy ..\..\ethernet.ngc results\

rem  Copy the constraints files generated by Coregen
echo 'Copying files from constraints directory to results directory'
copy ..\example_design\ethernet_example_design.ucf results\

cd results

echo 'Running ngdbuild'
ngdbuild ethernet_example_design

map -ol high -timing -detail ethernet_example_design -o mapped.ncd

echo 'Running par'
par -ol high -w mapped.ncd routed.ncd mapped.pcf

echo 'Running trce'
trce -u -e 10 routed -o routed mapped.pcf


echo 'Running netgen to create gate level Verilog model'
netgen -ofmt verilog -pcf mapped.pcf -sim -dir . -tm ethernet_example_design -w -sdf_anno false routed.ncd routed.v