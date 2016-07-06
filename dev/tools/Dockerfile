FROM scratch

ENV USER_HOME /root

# install necessities
RUN apt-get update && \
    apt-get install -y git tmux vim zsh && \

    # install oh-my-zsh
    git clone --depth=1 https://github.com/robbyrussell/oh-my-zsh.git $USER_HOME/.oh-my-zsh
    echo "source $USER_HOME/.zshrc_extra" >> $HOME/.zshrc

# copy dev-env scripts
COPY zshrc $USER_HOME/.zshrc_extra
COPY tmux.conf $USER_HOME/.tmux.conf
