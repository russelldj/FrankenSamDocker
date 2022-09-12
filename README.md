This builds an environment for [LIOSAM](https://github.com/fyandun/liosam_new_payload) for the new payload.

You can run `source build_dockerfile.sh` to build the docker file.

Then you should be able to see `frankensam` after running `docker image ls`.

Enter the container with `run_docker.sh`. This will create a `data` directory and `bags` and `results` subdirectories if they don't exist. Then you will be dropped into a shell in the docker container. Within the container, run `cd ~/catkin_ws` and run `source devel/setup.bash`. Now you can run `roslaunch liovil_sam run.launch`. 

You should now place the rosbags in the `data/bags` folder on your host machine. They will show up within the docker instance in `~/data/bags`. Now you can play the rosbag. 

It may be useful to start a tmux session to run all the components at once. Perhaps there are other ways to attach multiple terminals to a running session, but I don't know them.
