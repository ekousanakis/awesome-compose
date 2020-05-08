FROM elixir:latest

RUN mix local.hex --force &&\
	mix archive.install hex phx_new --force

RUN apt-get update && \
  ##install inotify-tool for phoenix hot reload
	apt-get install -y inotify-tools && \
  ## Install postgres client
	apt-get install -y postgresql-client && \
  ##install nodejs and npm
	apt-get install -y nodejs npm && \
  ## Clear apt cache
	rm -rf /var/lib/apt/lists/*
	
#copy sample phoenix app to docker image	
WORKDIR /phoenixapp/
COPY phoenixapp/ /phoenixapp/

## install project depencies
RUN mix deps.get --force &&\
	mix local.rebar --force &&\    
    mix deps.compile  --force &&\
	cd /phoenixapp/assets/ --force &&\
	npm install  --force &&\
	node node_modules/webpack/bin/webpack.js --mode development --force

EXPOSE 4000

CMD ["mix phx.server"]

