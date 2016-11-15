package=native_protobuf
$(package)_version=2.5.0
$(package)_download_path=https://protobuf.googlecode.com/files
$(package)_file_name=protobuf-$($(package)_version).tar.bz2
$(package)_sha256_hash=

define $(package)_set_vars
$(package)_config_opts=--disable-shared
endef

define $(package)_config_cmds
  $($(package)_autoconf)
endef

define $(package)_build_cmds
  $(MAKE) -C src protoc
endef

define $(package)_stage_cmds
  $(MAKE) -C src DESTDIR=$($(package)_staging_dir) install-strip
endef

define $(package)_postprocess_cmds
  rm -rf lib include
endef
