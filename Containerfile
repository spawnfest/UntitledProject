FROM erlang:26

RUN mkdir -p /workdir

COPY . /workdir
workdir

WORKDIR /workdir

CMD ["rebar3" , "compile"]

ENTRYPOINT ["rebar3", "lfe", "run"]

