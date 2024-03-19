ergogen_bin=ergogen/src/cli.js
output_dir=out
input=niu.yaml

.PHONY: build
build: $(input)
	node $(ergogen_bin) $(input) -o $(output_dir)

.PHONY: view
view: build
	pcbnew out/pcbs/niu.kicad_pcb
