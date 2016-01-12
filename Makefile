all: help

help:
	@echo ""
	@echo "-- help menu"
	@echo ""
	@echo "make build-ros               - build all ros images"
	@echo "make build-ros-no-cache      - build all ros images from scratch"
	@echo "make clean-ros               - remove all ros images"
	@echo "make build-spencer           - build all spencer images"
	@echo "make build-spencer-no-cache  - build all spencer images from scratch"
	@echo "make clean-spencer           - remove all spencer images"
	@echo ""

build-ros:
	@docker build -q --tag=harmish/ros:hydro-base			ros/hydro-base/.
	@docker build -q --tag=harmish/ros:hydro-robot			ros/hydro-robot/.
	@docker build -q --tag=harmish/ros:hydro-navigation		ros/hydro-navigation/.
	@docker build -q --tag=harmish/ros:hydro-desktop-full	ros/hydro-desktop-full/.

	@docker build -q --tag=harmish/ros:indigo-base			ros/indigo-base/.
	@docker build -q --tag=harmish/ros:indigo-robot			ros/indigo-robot/.
	@docker build -q --tag=harmish/ros:indigo-navigation	ros/indigo-navigation/.
	@docker build -q --tag=harmish/ros:indigo-desktop-full	ros/indigo-desktop-full/.
	@docker build -q --tag=harmish/ros:indigo-ultimate		ros/indigo-ultimate/.

	@docker build -q --tag=harmish/ros:jade-base			ros/jade-base/.
	@docker build -q --tag=harmish/ros:jade-robot			ros/jade-robot/.
	@docker build -q --tag=harmish/ros:jade-navigation		ros/jade-navigation/.
	@docker build -q --tag=harmish/ros:jade-desktop-full	ros/jade-desktop-full/.
	@docker build -q --tag=harmish/ros:jade-ultimate		ros/jade-ultimate/.

build-ros-no-cache:
	@docker build -q --no-cache --tag=harmish/ros:hydro-base			ros/hydro-base/.
	@docker build -q --no-cache --tag=harmish/ros:hydro-robot			ros/hydro-robot/.
	@docker build -q --no-cache --tag=harmish/ros:hydro-navigation		ros/hydro-navigation/.
	@docker build -q --no-cache --tag=harmish/ros:hydro-desktop-full	ros/hydro-desktop-full/.

	@docker build -q --no-cache --tag=harmish/ros:indigo-base			ros/indigo-base/.
	@docker build -q --no-cache --tag=harmish/ros:indigo-robot			ros/indigo-robot/.
	@docker build -q --no-cache --tag=harmish/ros:indigo-navigation		ros/indigo-navigation/.
	@docker build -q --no-cache --tag=harmish/ros:indigo-desktop-full	ros/indigo-desktop-full/.
	@docker build -q --no-cache --tag=harmish/ros:indigo-ultimate		ros/indigo-ultimate/.

	@docker build -q --no-cache --tag=harmish/ros:jade-base				ros/jade-base/.
	@docker build -q --no-cache --tag=harmish/ros:jade-robot			ros/jade-robot/.
	@docker build -q --no-cache --tag=harmish/ros:jade-navigation		ros/jade-navigation/.
	@docker build -q --no-cache --tag=harmish/ros:jade-desktop-full		ros/jade-desktop-full/.
	@docker build -q --no-cache --tag=harmish/ros:jade-ultimate			ros/jade-ultimate/.

build-spencer:
	@docker build -q --tag=harmish/spencer:hydro	spencer/hydro/.
	@docker build -q --tag=harmish/spencer:indigo	spencer/indigo/.
	@docker build -q --tag=harmish/spencer:jade	spencer/jade/.

build-spencer-no-cache:
	@docker build -q --no-cache --tag=harmish/spencer:hydro		spencer/hydro/.
	@docker build -q --no-cache --tag=harmish/spencer:indigo	spencer/indigo/.
	@docker build -q --no-cache --tag=harmish/spencer:jade		spencer/jade/.

build-robotpkg:
	@docker build -q --tag=harmish/robotpkg:robotpkg-wo-ros		robotpkg/robotpkg-wo-ros/.
	@docker build -q --tag=harmish/robotpkg:robotpkg			robotpkg/robotpkg/.
	@docker build -q --tag=harmish/robotpkg:optitrack			robotpkg/optitrack/.

build-robotpkg-no-cache:
	@docker build -q --no-cache --tag=harmish/robotpkg:robotpkg-wo-ros	robotpkg/robotpkg-wo-ros/.
	@docker build -q --no-cache --tag=harmish/robotpkg:robotpkg			robotpkg/robotpkg/.
	@docker build -q --no-cache --tag=harmish/robotpkg:optitrack		robotpkg/optitrack/.

build-julia:
	@docker build -q --tag=harmish/julia:julia			julia/julia/.
	@docker build -q --tag=harmish/julia:julia-iv		julia/julia-iv/.
	@docker build -q --tag=harmish/julia:scipy-julia	julia/scipy-julia/.

build-julia-no-cache:
	@docker build -q --no-cache --tag=harmish/julia:julia			julia/julia/.
	@docker build -q --no-cache --tag=harmish/julia:julia-iv		julia/julia-iv/.
	@docker build -q --no-cache --tag=harmish/julia:scipy-julia		julia/scipy-julia/.

build-latex:
	@docker build -q --tag=harmish/latex		latex/.

build-morse:
	@docker build -q --tag=harmish/morse:morse		morse/morse/.
	@docker build -q --tag=harmish/morse:ros		morse/ros/.
	@docker build -q --tag=harmish/morse:ros-pr2	morse/ros-pr2/.

build-morse-no-cache:
	@docker build -q --no-cache --tag=harmish/morse:morse		morse/morse/.
	@docker build -q --no-cache --tag=harmish/morse:ros			morse/ros/.
	@docker build -q --no-cache --tag=harmish/morse:ros-pr2		morse/ros-pr2/.

clean-ros:
	@docker rmi -f harmish/ros:hydro-base
	@docker rmi -f harmish/ros:hydro-robot
	@docker rmi -f harmish/ros:hydro-navigation
	@docker rmi -f harmish/ros:hydro-desktop-full

	@docker rmi -f harmish/ros:indigo-base
	@docker rmi -f harmish/ros:indigo-robot
	@docker rmi -f harmish/ros:indigo-navigation
	@docker rmi -f harmish/ros:indigo-desktop-full
	@docker rmi -f harmish/ros:indigo-ultimate

	@docker rmi -f harmish/ros:jade-base
	@docker rmi -f harmish/ros:jade-robot
	@docker rmi -f harmish/ros:jade-navigation
	@docker rmi -f harmish/ros:jade-desktop-full
	@docker rmi -f harmish/ros:jade-ultimate

clean-spencer:
	@docker rmi -f harmish/spencer:hydro
	@docker rmi -f harmish/spencer:indigo
	@docker rmi -f harmish/spencer:jade

clean-robotpkg:
	@docker rmi -f harmish/robotpkg:robotpkg-wo-ros
	@docker rmi -f harmish/robotpkg:robotpkg
	@docker rmi -f harmish/robotpkg:optitrack

clean-julia:
	@docker rmi -f harmish/julia:julia
	@docker rmi -f harmish/julia:julia-iv
	@docker rmi -f harmish/julia:scipy-julia

clean-latex:
	@docker rmi -f harmish/latex

clean-morse:
	@docker rmi -f harmish/morse:morse
	@docker rmi -f harmish/morse:ros
	@docker rmi -f harmish/morse:ros-pr2
