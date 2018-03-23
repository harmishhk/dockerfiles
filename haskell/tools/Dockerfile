FROM harmish/haskell:stack

# install packages required by vscode-haskero
RUN stack install hlint && \
    # fix for intero
    apt-get update && apt-get install -y libtinfo-dev && \
    stack install intero QuickCheck
