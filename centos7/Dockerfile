FROM ubuntu

RUN apt-get update && apt-get install -y \ 
    openssh-server \
    passwd \
    sudo \
    && rm -rf /var/lib/apt/lists/*

RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/apt/sources.list

RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/apt/sources.list

RUN useradd remote && \
   ## usermod -aG sudo remote && \
    echo "remote:1234" | chpasswd && \
    su remote 

RUN mkdir -p  /home/remote/.ssh && \
    chmod 700 /home/remote/.ssh && \
    chown remote:remote -R /home/remote/.ssh

COPY remotekey.pub  /home/remote/.ssh/authorized_keys
RUN chown remote:remote -R /home/remote/.ssh && \
    chmod 600 /home/remote/.ssh/authorized_keys

RUN ssh-keygen -A

CMD service ssh start && tail -f /dev/null
