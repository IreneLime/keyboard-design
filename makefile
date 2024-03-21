ergogen_bin=ergogen/src/cli.js
output_dir=out
input=keyboard_layout.yaml

.PHONY: build
build: $(input)
	node $(ergogen_bin) $(input) -o $(output_dir)

.PHONY: view
view: build
	pcbnew out/pcbs/keyboard-design.kicad_pcb
