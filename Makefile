USER:=aboyett
IMAGE:=net-investigation

TAG:=$(USER)/$(IMAGE)
STAMP:=.stamp

.PHONY: build push

build: $(STAMP)/build

push: build
	docker push $(TAG)

$(STAMP)/build: $(STAMP) Dockerfile
	docker build -t $(TAG) .
	@touch $(STAMP)/build

$(STAMP):
	@mkdir $(STAMP)

clean:
	@rm $(STAMP)/build
	docker rmi $(TAG)
