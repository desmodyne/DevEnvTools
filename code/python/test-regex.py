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
# [username[:password]@]hostname[:port][/path]
# instead of hostname, an IP address may be used


def parse_conn_str(conn_str):
    '''
    TODO: doc
    '''

    # http://stackoverflow.com/q/355723
    # http://stackoverflow.com/q/6321458
    # http://stackoverflow.com/a/5254916
    # https://tools.ietf.org/html/rfc3986#page-50
    regex = r'(?:([a-z_]+)(?::([a-z_]+))?@)?([a-z_]+)(?::([0-9]+))?(?:(/[a-z_/]+))?'

    match = search(regex, conn_str)

    # print match.groups()
    # print keyword_index_map[keyword]
    # print match.group(keyword_index_map[keyword])

    return match.groups()


class test_hostname(TestCase):
    def setUp(self):
        self.test_string = 'hostname'
    def test_username(self):
        self.assertEqual(parse_conn_str(self.test_string)[0], None)
    def test_password(self):
        self.assertEqual(parse_conn_str(self.test_string)[1], None)
    def test_hostname(self):
        self.assertEqual(parse_conn_str(self.test_string)[2], 'hostname')
    def test_port(self):
        self.assertEqual(parse_conn_str(self.test_string)[3], None)
    def test_path(self):
        self.assertEqual(parse_conn_str(self.test_string)[4], None)

class test_username_hostname(TestCase):
    def setUp(self):
        self.test_string = 'username@hostname'
    def test_username(self):
        self.assertEqual(parse_conn_str(self.test_string)[0], 'username')
    def test_password(self):
        self.assertEqual(parse_conn_str(self.test_string)[1], None)
    def test_hostname(self):
        self.assertEqual(parse_conn_str(self.test_string)[2], 'hostname')
    def test_port(self):
        self.assertEqual(parse_conn_str(self.test_string)[3], None)
    def test_path(self):
        self.assertEqual(parse_conn_str(self.test_string)[4], None)

class test_username_password_hostname(TestCase):
    def setUp(self):
        self.test_string = 'username:password@hostname'
    def test_username(self):
        self.assertEqual(parse_conn_str(self.test_string)[0], 'username')
    def test_password(self):
        self.assertEqual(parse_conn_str(self.test_string)[1], 'password')
    def test_hostname(self):
        self.assertEqual(parse_conn_str(self.test_string)[2], 'hostname')
    def test_port(self):
        self.assertEqual(parse_conn_str(self.test_string)[3], None)
    def test_path(self):
        self.assertEqual(parse_conn_str(self.test_string)[4], None)

class test_username_password_hostname_port(TestCase):
    def setUp(self):
        self.test_string = 'username:password@hostname:1234'
    def test_username(self):
        self.assertEqual(parse_conn_str(self.test_string)[0], 'username')
    def test_password(self):
        self.assertEqual(parse_conn_str(self.test_string)[1], 'password')
    def test_hostname(self):
        self.assertEqual(parse_conn_str(self.test_string)[2], 'hostname')
    def test_port(self):
        self.assertEqual(parse_conn_str(self.test_string)[3], '1234')
    def test_path(self):
        self.assertEqual(parse_conn_str(self.test_string)[4], None)

class test_username_password_hostname_port_path(TestCase):
    def setUp(self):
        self.test_string = 'username:password@hostname:1234/path'
    def test_username(self):
        self.assertEqual(parse_conn_str(self.test_string)[0], 'username')
    def test_password(self):
        self.assertEqual(parse_conn_str(self.test_string)[1], 'password')
    def test_hostname(self):
        self.assertEqual(parse_conn_str(self.test_string)[2], 'hostname')
    def test_port(self):
        self.assertEqual(parse_conn_str(self.test_string)[3], '1234')
    def test_path(self):
        self.assertEqual(parse_conn_str(self.test_string)[4], '/path')


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
