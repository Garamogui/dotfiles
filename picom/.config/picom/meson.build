project('picom', 'c', version: '11',
        default_options: ['c_std=c11', 'warning_level=1'])

cc = meson.get_compiler('c')

# use project version by default
version = 'v'+meson.project_version()

# use git describe if that's available
git = find_program('git', required: false)
if git.found()
	gitv = run_command('git', 'rev-parse', '--short=5', 'HEAD', check: false)
	if gitv.returncode() == 0
		version = 'vgit-'+gitv.stdout().strip()
	endif
endif

add_global_arguments('-DPICOM_VERSION="'+version+'"', language: 'c')

if get_option('buildtype') == 'release'
	add_global_arguments('-DNDEBUG', language: 'c')
endif

if get_option('sanitize')
	sanitizers = ['address', 'undefined']
	if cc.has_argument('-fsanitize=integer')
		sanitizers += ['integer']
	endif
	if cc.has_argument('-fsanitize=nullability')
		sanitizers += ['nullability']
	endif
	add_global_arguments('-fsanitize='+','.join(sanitizers), language: 'c')
	add_global_link_arguments('-fsanitize='+','.join(sanitizers), language: 'c')
	if cc.has_argument('-fno-sanitize=unsigned-integer-overflow')
		add_global_arguments('-fno-sanitize=unsigned-integer-overflow', language: 'c')
	endif
endif

if get_option('modularize')
	if not cc.has_argument('-fmodules')
		error('option \'modularize\' requires clang')
	endif
	add_global_arguments(['-fmodules',
	                      '-fmodule-map-file='+
	                      meson.current_source_dir()+
	                      '/src/picom.modulemap'],
	                     language: 'c')
endif

add_global_arguments('-D_GNU_SOURCE', language: 'c')

if cc.has_header('stdc-predef.h')
	add_global_arguments('-DHAS_STDC_PREDEF_H', language: 'c')
endif

if get_option('warning_level') != '0'
  warns = [ 'cast-function-type', 'ignored-qualifiers', 'missing-parameter-type',
            'nonnull', 'shadow', 'no-type-limits', 'old-style-declaration', 'override-init',
            'sign-compare', 'type-limits', 'uninitialized', 'shift-negative-value',
            'unused-but-set-parameter', 'unused-parameter', 'implicit-fallthrough=2',
            'no-unknown-warning-option', 'no-missing-braces', 'conversion', 'empty-body',
            'no-c2x-extensions' ]
  bad_warns_ubsan = [
    'no-format-overflow' # see gcc bug 87884, enabling UBSAN makes gcc spit out spurious warnings
                         # (if you saw this comment, went and checked gcc bugzilla, and found out
                         # bug has been fixed, please open a PR to remove this).
  ]
  if get_option('b_sanitize').contains('undefined') and cc.get_id() == 'gcc'
    warns = warns + bad_warns_ubsan
  endif
  foreach w : warns
          if cc.has_argument('-W'+w)
                  add_global_arguments('-W'+w, language: 'c')
          endif
  endforeach
endif

test_h_dep = subproject('test.h').get_variable('test_h_dep')

subdir('src')
subdir('man')

install_data('bin/picom-trans', install_dir: get_option('bindir'))
install_data('picom.desktop', install_dir: 'share/applications')
install_data('picom.desktop', install_dir: get_option('sysconfdir') / 'xdg' / 'autostart')

pkgconf = import('pkgconfig')

picom_pc = pkgconf.generate(
  name: 'picom-api',
  description: 'picom API headers',
  requires: [ 'pixman-1', 'xcb' ],
  subdirs: 'picom',
)

if get_option('compton')
	install_data('compton.desktop', install_dir: 'share/applications')
	install_data('media/icons/48x48/compton.png',
                     install_dir: 'share/icons/hicolor/48x48/apps')
	install_data('media/compton.svg',
                     install_dir: 'share/icons/hicolor/scalable/apps')

	meson.add_install_script('meson/install.sh')
endif
