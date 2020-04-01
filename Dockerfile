FROM travisci/ci-garnet:packer-1512502276-986baf0

ENV NPM_TOKEN 10eb7986-6c7d-4fc5-b70e-f9c90c390f3d

WORKDIR /home/travis/builds

COPY . /home/travis/builds
RUN chmod 777 entrypoint.sh
RUN chmod 777 init.sh

ENTRYPOINT [ "/home/travis/builds/init.sh" ]

CMD ["/home/travis/builds/entrypoint.sh"]

