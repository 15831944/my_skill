docker run -it \
	-h pwn \
	--name pwn \
    --privileged \
	-v /home/kevins/pwn:/ctf/work \
	-p 23946:23946 \
	--cap-add=SYS_PTRACE \
	registry.cn-hangzhou.aliyuncs.com/kevinsbobo/pwndocker:v2
