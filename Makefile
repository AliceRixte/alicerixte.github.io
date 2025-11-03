

### Remove directory recursively
ifeq ($(OS),Windows_NT)

define rm_rf
	if exist "$(1)" powershell -Command "Remove-Item -Path '$(1)' -Recurse -Force"
endef

else

define rm_rf
	rm -rf $(1)
endef
endif

all:
	$(call rm_rf, ./_site)
	bundle exec jekyll serve --livereload