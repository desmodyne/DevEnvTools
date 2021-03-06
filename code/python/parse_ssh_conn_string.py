#!/usr/bin/env python
# encoding: utf-8

'''
parse_ssh_conn_string.py

parse ssh connection string and print its components

author  : stefan schablowski
contact : stefan.schablowski@desmodyne.com
created : 2017-05-22
'''


from re  import search
from sys import argv


# ssh / scp connection string:
# [username[:password]@]hostname[:port][/path]
# instead of hostname, an IP address may be used


# TODO: error handling
# TODO: validate arguments
# TODO: refactor to parse_URI ?


def parse_conn_str(conn_str):
    '''
    TODO: doc
    '''

    # http://stackoverflow.com/q/355723
    # http://stackoverflow.com/q/6321458
    # http://stackoverflow.com/a/5254916
    # https://tools.ietf.org/html/rfc3986#page-50
    # TODO: document characters allowed per conn string component
    # TODO: unit-test this
    regex = r'(?:([a-z_0-9]+)(?::([a-z_0-9]+))?@)?([a-z-0-9]+)(?::([0-9]+))?(?:(/[a-z_0-9/]+))?'

    match = search(regex, conn_str)

    # print match.groups()
    # print keyword_index_map[keyword]
    # print match.group(keyword_index_map[keyword])

    items = match.groups()

    # change None to empty string
    # https://stackoverflow.com/a/1540069
    new_items = [item if item else '' for item in items]

    return new_items


def main():
    '''
    TODO: doc
    '''

    # TODO: make this the interface to stdin, stdout and stderr
    items = parse_conn_str(argv[1])

    # result is returned as output on stdout
    # https://stackoverflow.com/a/13443597
    print '\n'.join(map(str, items))


if __name__ == '__main__':
    '''
    TODO: doc
    '''

    main()
