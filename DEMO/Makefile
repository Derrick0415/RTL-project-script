module_name = demo

simall:	wave \
		urgv

.PHONY:presim
presim:
	mkdir -p vcs
	mkdir -p wave
	mkdir -p saves
	cat $(module_name).f | xargs realpath > ./vcs/$(module_name).f

.PHONY:vcs
vcs:presim
	cd vcs && \
	vcs -f ./$(module_name).f  -top tb_$(module_name) \
	-l vcs.log \
	-sverilog +systemverilogext+.sv \
	-full64 -debug_access -R -Mupdate \
	-timescale=1ns/1ns -kdb \
	-cm line+cond+tgl+fsm+branch+assert 

.PHONY:wave
wave:presim
	cd wave && \
	verdi -dbdir ../vcs/simv.daidir \
	-ssf ../vcs/$(module_name).fsdb \
	-ssr ../saves/Verdi.ses \
	-rcFile ./novas.rc \
	-guiConf ./novas.conf &

.PHONY:urgv
urgv:vcs
	mkdir -p urgv && cd urgv && \
	verdi -cov -covdir ../vcs/simv.vdb &

.PHONY:clean
clean:
	rm -rf vcs
	rm -rf wave
	rm -rf urgv

#urg: vcs
#	urg -dir ../vcs/simv.vdb -report coverage &
#	firefox ./coverage/hierarchy.html &

#dve: vcs
#	./simv -gui \
	-l simv.log & \
	-cm line+cond+tgl+fsm+branch+assert
