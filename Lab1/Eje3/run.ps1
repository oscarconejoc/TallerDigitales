Get-ChildItem | Write-Host

$env:Path = 'C:\intelFPGA\20.1\modelsim_ase\win32aloem;' + $env:Path

$REPO = Get-Location
$REPO = $REPO -replace "\\","/"
Write-Host $REPO

vlib work
vmap work work
vlog -sv Deco_tb.sv Deco.sv 
vsim -c -voptargs=+acc work.Deco_tb -do "add wave *; run 100ns; quit -f"
# vsim -view vsim.wlf