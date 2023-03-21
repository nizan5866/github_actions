From ubuntu
ARG user=rust_user
RUN ["apt-get","update"] && ["apt-get","-y","install","sudo"]
RUN useradd -ms /bin/bash $user

RUN echo '${user} ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER ${user}
WORKDIR /project
COPY hello .
CMD ["./hello"]
