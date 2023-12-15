def add_custom_arguments(parser):
    parser.add_argument("-v", "--oot-version", help="OOT version to diff", default="gc-eu-mq-dbg")

def apply(config, args):
    version = args.version
    config['mapfile'] = f'build/{version}/z64.map'
    config['myimg'] = f'oot-{version}.z64'
    config['baseimg'] = 'baserom.z64'
    config['makeflags'] = [f'VERSION={version}']
    config['source_directories'] = ['src', 'include', 'spec']
