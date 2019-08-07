## Enable windows (graphical display) in containers

To open windows, the container must be allowed access to the host's X server. The `Makefile` first discovers the host's *machine ID* which I found is needed for full compatibility. The machine ID is forwarded as build argument to `docker build`.

The Dockerfile establishes that the `$DISPLAY` environment variable can be fed to the container at runtime, as well the `$XAUTHORITY` value; the latter is a file which authorizes the container to communicate with the host's graphical display server. Lastly, the Dockerfile copies the host's machine ID.

The `run-bash.sh` runscript sets up a temporary authorization file `$XAUTH` (like a security token) and forwards this and the local X socket `$XSOCK` to the container runtime, together with the aforementioned environment variables.

