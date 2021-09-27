FROM docker/dev-environments-default
RUN sudo apt-get update && sudo apt-get install -y apt-transport-https
RUN sudo sh -c 'wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -'
RUN sudo sh -c 'wget -qO- https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list'
RUN sudo apt-get update
RUN sudo apt-get install dart
RUN export PATH="$PATH:/usr/lib/dart/bin"
RUN echo 'export PATH="$PATH:/usr/lib/dart/bin"' >> ~/.profile

