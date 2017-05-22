#!/usr/bin/env python
# encoding: utf-8

'''
test-regex.py

unit test script for regex to parse ssh connection string

author  : stefan schablowski
contact : sschablowski@gmail.com
created : 2017-05-22
'''


from re import search
from unittest import main as ut_main, TestCase


# ssh / scp connection string:
# [username[:password]@]hostname[:port][/folder]
# instead of hostname, an IP address may be used


def parse_conn_str(conn_str, keyword):
    '''
    TODO: doc
    '''

    keyword_index_map = \
    {
        'username' : 1,
        'password' : 2,
        'hostname' : 3,
        'port'     : 4,
        'path'     : 5
    }

    # http://stackoverflow.com/q/355723
    # http://stackoverflow.com/q/6321458
    # https://tools.ietf.org/html/rfc3986#page-50
    regex = r'(?:([a-z_]+)(?::([a-z_]+))?@)?([a-z_]+)(?::([a-z_]+))?(?:/([a-z_/]+))?'
    match = search(regex, conn_str)

    # print match.groups()
    # print keyword_index_map[keyword]
    # print match.group(keyword_index_map[keyword])

    item  = match.group(keyword_index_map[keyword])

    return '' if item == None else item

    # test_str = 'my_user:my_pass@my_host'


class test_my_host(TestCase):

    def setUp(self):
        self.test_string = 'my_host'

    def test_username(self):
        self.assertEqual(parse_conn_str(self.test_string, 'username'), '')

    def test_password(self):
        self.assertEqual(parse_conn_str(self.test_string, 'password'), '')

    def test_hostname(self):
        self.assertEqual(parse_conn_str(self.test_string, 'hostname'), 'my_host')

    def test_port(self):
        self.assertEqual(parse_conn_str(self.test_string, 'port'), '')

    def test_path(self):
        self.assertEqual(parse_conn_str(self.test_string, 'path'), '')


def main():
    '''
    TODO: doc
    '''

    ut_main()


if __name__ == '__main__':
    '''
    TODO: doc
    '''

    main()
