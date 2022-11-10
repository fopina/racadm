IMAGE := fopina/racadm

all: build push

build:
	docker build -t $(IMAGE) .

push:
	docker push $(IMAGE)
