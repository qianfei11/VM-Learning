SUBDIRS=QEMU-and-KVM Others
.PHONY: all
all:
	@list='$(SUBDIRS)'; for subdir in $$list; do \
		$(MAKE) -C $$subdir; \
	done

.PHONY: clean
clean:
	@list='$(SUBDIRS)'; for subdir in $$list; do \
		$(MAKE) -C $$subdir clean; \
	done
