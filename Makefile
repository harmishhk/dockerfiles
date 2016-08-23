all: help

help:
	@echo ""
	@echo "-- help menu"
	@echo ""
	@echo "make build-{image/s}           	- build {image/s}"
	@echo "make build-{image/s} -no-cache	- build {image/s}} from scratch"
	@echo "make clean-{image/s}             - remove {image/s}"
	@echo ""

build-julia:
	@docker build -q --tag=harmish/julia:dev			julia/dev/.
	@docker build -q --tag=harmish/julia:image-video    julia/image-video/.
	@docker build -q --tag=harmish/julia:scipy	        julia/scipy/.

build-julia-no-cache:
	@docker build -q --no-cache --tag=harmish/julia:dev			    julia/dev/.
	@docker build -q --no-cache --tag=harmish/julia:image-video     julia/image-video/.
	@docker build -q --no-cache --tag=harmish/julia:scipy	        julia/scipy/.

clean-julia:
	@docker rmi -f harmish/julia:dev || true
	@docker rmi -f harmish/julia:image-video || true
	@docker rmi -f harmish/julia:scipy || true

build-latex:
	@docker build -q --tag=harmish/latex    latex/.

build-latex-no-cache:
	@docker build -q --no-cache --tag=harmish/latex latex/.

clean-latex:
	@docker rmi -f harmish/latex || true

build-morse:
	@docker build -q --tag=harmish/morse:morse		morse/morse/.
	@docker build -q --tag=harmish/morse:ros		morse/ros/.
	@docker build -q --tag=harmish/morse:ros-pr2	morse/ros-pr2/.

build-morse-no-cache:
	@docker build -q --no-cache --tag=harmish/morse:morse	morse/morse/.
	@docker build -q --no-cache --tag=harmish/morse:ros		morse/ros/.
	@docker build -q --no-cache --tag=harmish/morse:ros-pr2	morse/ros-pr2/.

clean-morse:
	@docker rmi -f harmish/morse:morse || true
	@docker rmi -f harmish/morse:ros || true
	@docker rmi -f harmish/morse:ros-pr2 || true

build-robotpkg:
	@docker build -q --tag=harmish/robotpkg:robotpkg-wo-ros	robotpkg/robotpkg-wo-ros/.
	@docker build -q --tag=harmish/robotpkg:robotpkg		robotpkg/robotpkg/.
	@docker build -q --tag=harmish/robotpkg:optitrack		robotpkg/optitrack/.

build-robotpkg-no-cache:
	@docker build -q --no-cache --tag=harmish/robotpkg:robotpkg-wo-ros	robotpkg/robotpkg-wo-ros/.
	@docker build -q --no-cache --tag=harmish/robotpkg:robotpkg			robotpkg/robotpkg/.
	@docker build -q --no-cache --tag=harmish/robotpkg:optitrack		robotpkg/optitrack/.

clean-robotpkg:
	@docker rmi -f harmish/robotpkg:robotpkg-wo-ros || true
	@docker rmi -f harmish/robotpkg:robotpkg || true
	@docker rmi -f harmish/robotpkg:optitrack || true

build-ros-indigo:
	@docker build -q --tag=harmish/ros:indigo-navigation	ros/indigo-navigation/.
	@docker build -q --tag=harmish/ros:indigo-devel		    ros/indigo-devel/.
	@docker build -q --tag=harmish/ros:indigo-pr2		    ros/indigo-pr2/.
	@docker build -q --tag=harmish/ros:indigo-rosbridge		ros/indigo-rosbridge/.

build-ros-indigo-no-cache:
	@docker build -q --no-cache --tag=harmish/ros:indigo-navigation		ros/indigo-navigation/.
	@docker build -q --no-cache --tag=harmish/ros:indigo-devel      	ros/indigo-devel/.
	@docker build -q --no-cache --tag=harmish/ros:indigo-pr2            ros/indigo-pr2/.
	@docker build -q --no-cache --tag=harmish/ros:indigo-rosbridge      ros/indigo-rosbridge/.

clean-ros-indigo:
	@docker rmi -f harmish/ros:indigo-navigation || true
	@docker rmi -f harmish/ros:indigo-devel || true
	@docker rmi -f harmish/ros:indigo-pr2 || true
	@docker rmi -f harmish/ros:indigo-rosbridge || true

build-ros-jade:
	@docker build -q --tag=harmish/ros:jade-navigation		ros/jade-navigation/.
	@docker build -q --tag=harmish/ros:jade-devel		    ros/jade-devel/.

build-ros-jade-no-cache:
	@docker build -q --no-cache --tag=harmish/ros:jade-navigation		ros/jade-navigation/.
	@docker build -q --no-cache --tag=harmish/ros:jade-devel      		ros/jade-devel/.

clean-ros-jade:
	@docker rmi -f harmish/ros:jade-navigation || true
	@docker rmi -f harmish/ros:jade-devel || true

build-ros-kinetic:
	@docker build -q --tag=harmish/ros:kinetic-navigation	ros/kinetic-navigation/.
	@docker build -q --tag=harmish/ros:kinetic-devel    	ros/kinetic-devel/.

build-ros-kinetic-no-cache:
	@docker build -q --no-cache --tag=harmish/ros:kinetic-navigation	ros/kinetic-navigation/.
	@docker build -q --no-cache --tag=harmish/ros:kinetic-devel     	ros/kinetic-devel/.

clean-ros-kinetic:
	@docker rmi -f harmish/ros:kinetic-navigation || true
	@docker rmi -f harmish/ros:kinetic-devel || true

build-ros-web:
	@docker build -q --tag=harmish/ros:web-devel    ros/web-devel/.

build-ros-web-no-cache:
	@docker build -q --no-cache --tag=harmish/ros:web-devel    ros/web-devel/.

clean-ros-web:
	@docker rmi -f harmish/ros:web-devel || true

build-ros: build-ros-indigo build-ros-jade build-ros-kinetic build-ros-web

build-ros-no-cache: build-ros-indigo-no-cache build-ros-jade-no-cache build-ros-kinetic-no-cache build-ros-web-no-cache

clean-ros: clean-ros-hydro clean-ros-indigo clean-ros-jade clean-ros-kinetic clean-ros-web

build-spencer:
	@docker build -q --tag=harmish/spencer:indigo	spencer/indigo/.
	@docker build -q --tag=harmish/spencer:jade	    spencer/jade/.

build-spencer-no-cache:
	@docker build -q --no-cache --tag=harmish/spencer:indigo	spencer/indigo/.
	@docker build -q --no-cache --tag=harmish/spencer:jade		spencer/jade/.

clean-spencer:
	@docker rmi -f harmish/spencer:indigo || true
	@docker rmi -f harmish/spencer:jade || true

build-typescript:
	@docker build -q --tag=harmish/typescript:latest typescript/.

build-typescript-no-cache:
	@docker build -q --no-cache --tag=harmish/typescript:latest typescript/.

clean-typescript:
	@docker rmi -f harmish/typescript:latest || true

build: build-julia build-latex build-morse build-robotpkg build-ros build-spencer build-typescript

build-no-cache: build-julia-no-cache build-latex-no-cache build-morse-no-cache build-robotpkg-no-cache build-ros-no-cache build-spencer-no-cache build-typescript-no-cache

clean: clean-julia clean-latex clean-morse clean-robotpkg clean-ros clean-typescript clean-spencer
