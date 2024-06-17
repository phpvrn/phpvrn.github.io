default_server_port:=4000
server_port:=$(PORT)

ifndef PORT
	server_port:=$(default_server_port)
endif

serve:
	docker run --rm \
	-p$(server_port):4000 \
	--volume="$(CURDIR):/srv/jekyll" \
	-it jekyll/jekyll:4.0 \
	jekyll serve

.PHONY: serve