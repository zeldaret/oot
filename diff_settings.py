def apply(config, args):
    config['mapfile'] = 'build/gc-eu-mq-dbg/z64.map'
    config['myimg'] = 'oot-gc-eu-mq-dbg.z64'
    config['baseimg'] = 'baserom_uncompressed.gc-eu-mq-dbg.z64'
    config['makeflags'] = []
    config['source_directories'] = ['src', 'include', 'spec']
