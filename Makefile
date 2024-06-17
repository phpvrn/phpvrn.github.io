default_server_port:=4000
server_port:=$(PORT)

ifndef PORT
	server_port:=$(default_server_port)
endif

serve:
	docker run --rm \
	-p$(server_port):4000 \
	--volume="$(CURDIR):/site" \
	-it bretfisher/jekyll-serve \
	jekyll serve

.PHONY: serve