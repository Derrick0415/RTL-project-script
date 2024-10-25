# Makefile to create new rtl project with design demo files

name = test

default:new_prj

dir:
	@if [ ! -d $(name) ]; then \
		echo -e "\nCreating Project $(name) ...\n"; \
		mkdir $(name); \
	else \
		echo -e "\nError! Project $(name) already exists.\n"; \
		exit 1; \
	fi

copy:dir
	@echo -e "Copying demo files from 'DEMO' ...\n"
	@cp ./DEMO/* ./$(name)/

rename:copy
	@echo -e "Rename files in '$(name)' ...\n"
	@cd $(name) && mv demo.sv $(name).sv && mv tb_demo.sv tb_$(name).sv
	@sed -i 's/demo/$(name)/g' ./$(name)/tb_$(name).sv
	@sed -i 's/demo/$(name)/g' ./$(name)/$(name).sv
	@sed -i 's/demo/$(name)/g' ./$(name)/Makefile
	@cd $(name) && find -name "*.sv" > ./$(name).f

new_prj:rename
	@echo -e "New Project $(name) is created succesfully\n"
