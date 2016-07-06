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
	@docker build -q --tag=harmish/julia:julia			julia/julia/.
	@docker build -q --tag=harmish/julia:julia-iv		julia/julia-iv/.
	@docker build -q --tag=harmish/julia:scipy-julia	julia/scipy-julia/.

build-julia-no-cache:
	@docker build -q --no-cache --tag=harmish/julia:julia			julia/julia/.
	@docker build -q --no-cache --tag=harmish/julia:julia-iv		julia/julia-iv/.
	@docker build -q --no-cache --tag=harmish/julia:scipy-julia		julia/scipy-julia/.

build-latex:
	@docker build -q --tag=harmish/latex	latex/.

build-latex-no-cache:
	@docker build -q --no-cache --tag=harmish/latex	latex/.

build-morse:
	@docker build -q --tag=harmish/morse:morse		morse/morse/.
	@docker build -q --tag=harmish/morse:ros		morse/ros/.
	@docker build -q --tag=harmish/morse:ros-pr2	morse/ros-pr2/.

build-morse-no-cache:
	@docker build -q --no-cache --tag=harmish/morse:morse	morse/morse/.
	@docker build -q --no-cache --tag=harmish/morse:ros		morse/ros/.
	@docker build -q --no-cache --tag=harmish/morse:ros-pr2	morse/ros-pr2/.

build-robotpkg:
	@docker build -q --tag=harmish/robotpkg:robotpkg-wo-ros	robotpkg/robotpkg-wo-ros/.
	@docker build -q --tag=harmish/robotpkg:robotpkg		robotpkg/robotpkg/.
	@docker build -q --tag=harmish/robotpkg:optitrack		robotpkg/optitrack/.

build-robotpkg-no-cache:
	@docker build -q --no-cache --tag=harmish/robotpkg:robotpkg-wo-ros	robotpkg/robotpkg-wo-ros/.
	@docker build -q --no-cache --tag=harmish/robotpkg:robotpkg			robotpkg/robotpkg/.
	@docker build -q --no-cache --tag=harmish/robotpkg:optitrack		robotpkg/optitrack/.

build-ros-hydro:
	@docker build -q --tag=harmish/ros:hydro-base			ros/hydro-base/.
	@docker build -q --tag=harmish/ros:hydro-robot			ros/hydro-robot/.
	@docker build -q --tag=harmish/ros:hydro-navigation		ros/hydro-navigation/.
	@docker build -q --tag=harmish/ros:hydro-desktop-full	ros/hydro-desktop-full/.

build-ros-indigo:
	@docker build -q --tag=harmish/ros:indigo-base			ros/indigo-base/.
	@docker build -q --tag=harmish/ros:indigo-robot			ros/indigo-robot/.
	@docker build -q --tag=harmish/ros:indigo-navigation	ros/indigo-navigation/.
	@docker build -q --tag=harmish/ros:indigo-desktop-full	ros/indigo-desktop-full/.
	@docker build -q --tag=harmish/ros:indigo-ultimate		ros/indigo-ultimate/.

build-ros-jade:
	@docker build -q --tag=harmish/ros:jade-base			ros/jade-base/.
	@docker build -q --tag=harmish/ros:jade-robot			ros/jade-robot/.
	@docker build -q --tag=harmish/ros:jade-navigation		ros/jade-navigation/.
	@docker build -q --tag=harmish/ros:jade-desktop-full	ros/jade-desktop-full/.
	@docker build -q --tag=harmish/ros:jade-ultimate		ros/jade-ultimate/.

build-ros-kinetic:
	@docker build -q --tag=harmish/ros:kinetic-base			ros/kinetic-base/.
	@docker build -q --tag=harmish/ros:kinetic-robot		ros/kinetic-robot/.
	@docker build -q --tag=harmish/ros:kinetic-navigation	ros/kinetic-navigation/.
	@docker build -q --tag=harmish/ros:kinetic-desktop-full	ros/kinetic-desktop-full/.

build-ros-hydro-no-cache:
	@docker build -q --no-cache --tag=harmish/ros:hydro-base			ros/hydro-base/.
	@docker build -q --no-cache --tag=harmish/ros:hydro-robot			ros/hydro-robot/.
	@docker build -q --no-cache --tag=harmish/ros:hydro-navigation		ros/hydro-navigation/.
	@docker build -q --no-cache --tag=harmish/ros:hydro-desktop-full	ros/hydro-desktop-full/.

build-ros-indigo-no-cache:
	@docker build -q --no-cache --tag=harmish/ros:indigo-base			ros/indigo-base/.
	@docker build -q --no-cache --tag=harmish/ros:indigo-robot			ros/indigo-robot/.
	@docker build -q --no-cache --tag=harmish/ros:indigo-navigation		ros/indigo-navigation/.
	@docker build -q --no-cache --tag=harmish/ros:indigo-desktop-full	ros/indigo-desktop-full/.
	@docker build -q --no-cache --tag=harmish/ros:indigo-ultimate		ros/indigo-ultimate/.

build-ros-jade-no-cache:
	@docker build -q --no-cache --tag=harmish/ros:jade-base				ros/jade-base/.
	@docker build -q --no-cache --tag=harmish/ros:jade-robot			ros/jade-robot/.
	@docker build -q --no-cache --tag=harmish/ros:jade-navigation		ros/jade-navigation/.
	@docker build -q --no-cache --tag=harmish/ros:jade-desktop-full		ros/jade-desktop-full/.
	@docker build -q --no-cache --tag=harmish/ros:jade-ultimate			ros/jade-ultimate/.

build-ros-kinetic-no-cache:
	@docker build -q --no-cache --tag=harmish/ros:kinetic-base			ros/kinetic-base/.
	@docker build -q --no-cache --tag=harmish/ros:kinetic-robot			ros/kinetic-robot/.
	@docker build -q --no-cache --tag=harmish/ros:kinetic-navigation	ros/kinetic-navigation/.
	@docker build -q --no-cache --tag=harmish/ros:kinetic-desktop-full	ros/kinetic-desktop-full/.

build-ros: build-ros-hydro build-ros-indigo build-ros-jade build-ros-kinetic

build-ros-no-cache: build-ros-hydro-no-cache build-ros-indigo-no-cache build-ros-jade-no-cache build-ros-kinetic-no-cache

build-spencer:
	@docker build -q --tag=harmish/spencer:hydro	spencer/hydro/.
	@docker build -q --tag=harmish/spencer:indigo	spencer/indigo/.
	@docker build -q --tag=harmish/spencer:jade	spencer/jade/.

build-spencer-no-cache:
	@docker build -q --no-cache --tag=harmish/spencer:hydro		spencer/hydro/.
	@docker build -q --no-cache --tag=harmish/spencer:indigo	spencer/indigo/.
	@docker build -q --no-cache --tag=harmish/spencer:jade		spencer/jade/.

build-gazebo:
	@docker build -q --tag=harmish/gazebo:ros	    gazebo/ros/.
	@docker build -q --tag=harmish/gazebo:ros-pr2	gazebo/ros-pr2/.

build-gazebo-no-cache:
	@docker build -q --no-cache --tag=harmish/gazebo:ros	    gazebo/ros/.
	@docker build -q --no-cache --tag=harmish/gazebo:ros-pr2	gazebo/ros-pr2/.

build-all: build-julia build-latex build-morse build-robotpkg build-ros build-spencer build-gazebo

clean-julia:
	@docker rmi -f harmish/julia:julia || true
	@docker rmi -f harmish/julia:julia-iv || true
	@docker rmi -f harmish/julia:scipy-julia || true

clean-latex:
	@docker rmi -f harmish/latex || true

clean-morse:
	@docker rmi -f harmish/morse:morse || true
	@docker rmi -f harmish/morse:ros || true
	@docker rmi -f harmish/morse:ros-pr2 || true

clean-robotpkg:
	@docker rmi -f harmish/robotpkg:robotpkg-wo-ros || true
	@docker rmi -f harmish/robotpkg:robotpkg || true
	@docker rmi -f harmish/robotpkg:optitrack || true

clean-ros-hydro:
	@docker rmi -f harmish/ros:hydro-base || true
	@docker rmi -f harmish/ros:hydro-robot || true
	@docker rmi -f harmish/ros:hydro-navigation || true
	@docker rmi -f harmish/ros:hydro-desktop-full || true

clean-ros-indigo:
	@docker rmi -f harmish/ros:indigo-base || true
	@docker rmi -f harmish/ros:indigo-robot || true
	@docker rmi -f harmish/ros:indigo-navigation || true
	@docker rmi -f harmish/ros:indigo-desktop-full || true
	@docker rmi -f harmish/ros:indigo-ultimate || true

clean-ros-jade:
	@docker rmi -f harmish/ros:jade-base || true
	@docker rmi -f harmish/ros:jade-robot || true
	@docker rmi -f harmish/ros:jade-navigation || true
	@docker rmi -f harmish/ros:jade-desktop-full || true
	@docker rmi -f harmish/ros:jade-ultimate || true

clean-ros-kinetic:
	@docker rmi -f harmish/ros:kinetic-base || true
	@docker rmi -f harmish/ros:kinetic-robot || true
	@docker rmi -f harmish/ros:kinetic-navigation || true
	@docker rmi -f harmish/ros:kinetic-desktop-full || true

clean-ros: clean-ros-hydro clean-ros-indigo clean-ros-jade clean-ros-kinetic

clean-spencer:
	@docker rmi -f harmish/spencer:hydro || true
	@docker rmi -f harmish/spencer:indigo || true
	@docker rmi -f harmish/spencer:jade || true

clean-gazebo:
	@docker rmi -f harmish/gazebo:ros || true
	@docker rmi -f harmish/gazebo:ros-pr2 || true


clean: clean-julia clean-latex clean-morse clean-robotpkg clean-ros clean-spencer
