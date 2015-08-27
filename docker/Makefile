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
	@docker build --tag=harmishhk/ros:hydro-base			ros/hydro-base/.
	@docker build --tag=harmishhk/ros:hydro-robot			ros/hydro-robot/.
	@docker build --tag=harmishhk/ros:hydro-navigation		ros/hydro-navigation/.
	@docker build --tag=harmishhk/ros:hydro-desktop-full	ros/hydro-desktop-full/.

	@docker build --tag=harmishhk/ros:indigo-base			ros/indigo-base/.
	@docker build --tag=harmishhk/ros:indigo-robot			ros/indigo-robot/.
	@docker build --tag=harmishhk/ros:indigo-navigation		ros/indigo-navigation/.
	@docker build --tag=harmishhk/ros:indigo-desktop-full	ros/indigo-desktop-full/.

	@docker build --tag=harmishhk/ros:jade-base				ros/jade-base/.
	@docker build --tag=harmishhk/ros:jade-robot			ros/jade-robot/.
	@docker build --tag=harmishhk/ros:jade-navigation		ros/jade-navigation/.
	@docker build --tag=harmishhk/ros:jade-desktop-full		ros/jade-desktop-full/.

build-ros-no-cache:
	@docker build --no-cache --tag=harmishhk/ros:hydro-base				ros/hydro-base/.
	@docker build --no-cache --tag=harmishhk/ros:hydro-robot			ros/hydro-robot/.
	@docker build --no-cache --tag=harmishhk/ros:hydro-navigation		ros/hydro-navigation/.
	@docker build --no-cache --tag=harmishhk/ros:hydro-desktop-full		ros/hydro-desktop-full/.

	@docker build --no-cache --tag=harmishhk/ros:indigo-base			ros/indigo-base/.
	@docker build --no-cache --tag=harmishhk/ros:indigo-robot			ros/indigo-robot/.
	@docker build --no-cache --tag=harmishhk/ros:indigo-navigation		ros/indigo-navigation/.
	@docker build --no-cache --tag=harmishhk/ros:indigo-desktop-full	ros/indigo-desktop-full/.

	@docker build --no-cache --tag=harmishhk/ros:jade-base				ros/jade-base/.
	@docker build --no-cache --tag=harmishhk/ros:jade-robot				ros/jade-robot/.
	@docker build --no-cache --tag=harmishhk/ros:jade-navigation		ros/jade-navigation/.
	@docker build --no-cache --tag=harmishhk/ros:jade-desktop-full		ros/jade-desktop-full/.

build-spencer:
	@docker build --tag=harmishhk/spencer:hydro		spencer/hydro/.
	@docker build --tag=harmishhk/spencer:indigo	spencer/indigo/.
	@docker build --tag=harmishhk/spencer:jade		spencer/jade/.

build-spencer-no-cache:
	@docker build --no-cache --tag=harmishhk/spencer:hydro		spencer/hydro/.
	@docker build --no-cache --tag=harmishhk/spencer:indigo		spencer/indigo/.
	@docker build --no-cache --tag=harmishhk/spencer:jade		spencer/jade/.

clean-ros:
	@docker rmi -f harmishhk/ros:hydro-base
	@docker rmi -f harmishhk/ros:hydro-robot
	@docker rmi -f harmishhk/ros:hydro-navigation
	@docker rmi -f harmishhk/ros:hydro-desktop-full

	@docker rmi -f harmishhk/ros:indigo-base
	@docker rmi -f harmishhk/ros:indigo-robot
	@docker rmi -f harmishhk/ros:indigo-navigation
	@docker rmi -f harmishhk/ros:indigo-desktop-full

	@docker rmi -f harmishhk/ros:jade-base
	@docker rmi -f harmishhk/ros:jade-robot
	@docker rmi -f harmishhk/ros:jade-navigation
	@docker rmi -f harmishhk/ros:jade-desktop-full

clean-spencer:
	@docker rmi -f harmishhk/spencer:hydro
	@docker rmi -f harmishhk/spencer:indigo
	@docker rmi -f harmishhk/spencer:jade
