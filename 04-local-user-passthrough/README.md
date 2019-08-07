## Being yourself in the container

By default, you are *root* in a container. This leads to all sorts of problems, which is why one should generally not **stay** root any longer than necessary.

Here are two options for doing so -- one for cloning the **building** user's ID into the container and one which builds with a generic non-root user and copies the **running** user's ID into the container at startup time. Both optionally enable `sudo` rights for the user inside the container. The latter turns you into an "I have no name!" user and complains about missing usergroups, but what is important is that your user and group ID are cloned.

