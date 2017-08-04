FROM meyskens/desktop-base

RUN wget https://download.jetbrains.com/resharper/JetBrains.Rider-2017.1.tar.gz &&\
    tar -xzf JetBrains.Rider-2017.1.tar.gz

#add .net core
RUN apt-get install -y curl libunwind8 gettext &&\
    curl -sSL -o dotnet.tar.gz https://go.microsoft.com/fwlink/?linkid=848826 &&\
    mkdir -p /opt/dotnet && sudo tar zxf dotnet.tar.gz -C /opt/dotnet &&\
    ln -s /opt/dotnet/dotnet /usr/local/bin

CMD Rider-2017.1/bin/rider.sh