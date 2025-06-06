def add_custom_arguments(parser):
    parser.add_argument("-v", "--version", dest="oot_version", help="OOT version", default="gc-eu-mq-dbg")

def apply(config, args):
    version = args.oot_version
    config['mapfile'] = f'build/{version}/oot-{version}.map'
    config['myimg'] = f'build/{version}/oot-{version}.z64'
    config['baseimg'] = f'baseroms/{version}/baserom-decompressed.z64'
    config['makeflags'] = [f'VERSION={version}']
    config['source_directories'] = ['src', 'include', 'spec']
