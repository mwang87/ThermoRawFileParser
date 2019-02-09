build:
	docker build --no-cache -t thermorawparser -f Dockerfile_basic .

bash:
	docker run -v $(PWD)/data:/data_input -i -t thermorawparser bash

convert:
	docker run -v $(PWD)/data:/data_input -i -t thermorawparser mono /src/bin/x64/Debug/ThermoRawFileParser.exe -i=/data_input/raw_file.raw -o=/data_input/output/ -f=0 -g -m=0 -c=PXD00001
