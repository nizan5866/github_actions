#From ubuntu
FROM rust:alpine as r
#ARG user=rust_user
#RUN ["apt-get","update"] && ["apt-get","-y","install","sudo"]
#RUN useradd -ms /bin/bash $user

#RUN echo '${user} ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
#USER ${user}
COPY hello.rs .
#RUN apt-get curl -y
#CMD curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
#RUN wget https://sh.rustup.rs | sh
RUN rustc hello.rs -o hello
#CMD ["./hello"]
#CMD ["rustc","--version"]
#CMD find / -name rustc
#CMD sleep 400

FROM alpine
COPY --from=r /hello ./
CMD [ "./hello" ]