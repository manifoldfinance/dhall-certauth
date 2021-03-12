define dhall-lint
	$(DHALL) lint --inplace $(1)
endef

define lint
	find $(1) -type f \( -not -iname *.md \) -exec $(call dhall-lint,{}) \;
endef
