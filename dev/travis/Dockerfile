FROM ruby

RUN gem install travis --no-rdoc --no-ri && \
    ruby -r $GEM_HOME/gems/travis-*/lib/travis/tools/completion.rb -e "Travis::Tools::Completion.install_completion"

CMD travis

