FROM scratch

# install necessities
RUN apt-get update
RUN apt-get install -y zsh tmux vim git

# install oh-my-zsh
ENV HOME /root
RUN git clone --depth=1 https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
COPY zshrc $HOME/.zshrc_extra
RUN echo "source $HOME/.zshrc_extra" >> ~/.zshrc

# copy dev-env scripts
COPY tmux.conf /root/.tmux.conf
