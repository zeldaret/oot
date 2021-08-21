def apply(config, args):
    config['mapfile'] = 'build/z64.map'
    config['myimg'] = 'zelda_ocarina_mq_dbg.z64'
    config['baseimg'] = 'baserom.z64'
    config['makeflags'] = []
    config['source_directories'] = ['src', 'include', 'spec']
