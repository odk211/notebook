FROM odk211/iruby-notebook

# install jupyter-vim-binding
RUN mkdir -p $(jupyter --data-dir)/nbextensions && \
    cd $(jupyter --data-dir)/nbextensions && \
    git clone https://github.com/lambdalisue/jupyter-vim-binding vim_binding --depth 1 && \
    jupyter nbextension enable vim_binding/vim_binding

COPY Gemfile .
RUN bundle install
