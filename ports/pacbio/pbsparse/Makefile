include ../../../mk/pitchfork.mk

ifeq ($(origin GHTOKEN),undefined)
    $(error "You need to set GHTOKEN")
endif

# Local variables
_NAME            = pbsparse
$(_NAME)_REPO   ?= https://$(GHTOKEN)@github.com/PacificBiosciences/$(_NAME)
_WRKSRC          = $(WORKSPACE)/$(_NAME)
$(_NAME)_VERSION?= HEAD

# Local works
do-fetch: | $(_WRKSRC)
$(_WRKSRC):
	$(GIT) clone $($(_NAME)_REPO) $@
	cd $(_WRKSRC) && $(GIT) checkout $($(_NAME)_VERSION)
do-install: | $(PREFIX)/var/pkg/$(_NAME)
$(PREFIX)/var/pkg/$(_NAME):
	rsync -aKx $(_WRKSRC)/include/pacbio/ $(PREFIX)/include/pacbio/
	find $(PREFIX)/include/pacbio/sparse|awk -F $(PREFIX)/ '{print $$2}'|grep -v '^$$'|sort -r > $@
