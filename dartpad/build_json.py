import os
import errno
import json
import sys


def path_hierarchy(path):
    hierarchy = {
        'type': 'folder',
        'name': os.path.basename(path),
        'path': path,
        'dartpad': {
        'gh_owner': 'hsurendran',
        'gh_repo': 'flutter_training',
        'gh_ref' : 'master',
        'gh_path': 'lib/' + path.split('/')[-1]
        }
    }

    try:
        hierarchy['children'] = [
            path_hierarchy(os.path.join(path, contents))
            for contents in sorted(os.listdir(path))
        ]
    except OSError as e:
        if e.errno != errno.ENOTDIR:
            raise
        hierarchy['type'] = os.path.splitext(path)[1]
        if hierarchy['type'] == ".txt":
            with open(path) as f:
                contents = f.read()
                hierarchy['contents'] = contents
                hierarchy['dartpad'] = ""
        if hierarchy['type'] == ".dart":
            hierarchy['dartpad'] = {
            
            }
        if hierarchy['type'] == "":
            hierarchy['type'] = "Unknown"
    return hierarchy


if __name__ == '__main__' :
    try:
        directory = sys.argv[1]
    except IndexError:
        directory = os.getcwd()

    fo = open("output.json", "w")
    fo.write(json.dumps(path_hierarchy(directory), indent=2, sort_keys=False, ))
    fo.close()
