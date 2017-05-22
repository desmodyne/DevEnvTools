#!/usr/bin/env python
# encoding: utf-8

'''
test_parse_ssh_conn_string.py

unit-test script to parse ssh connection string and print its components

author  : stefan schablowski
contact : sschablowski@gmail.com
created : 2017-05-22
'''


from parse_ssh_conn_string import parse_conn_str

from unittest import main, TestCase


class test_hostname(TestCase):
    def setUp(self):
        self.test_string = 'hostname'
    def test_username(self):
        self.assertEqual(parse_conn_str(self.test_string)[0], '')
    def test_password(self):
        self.assertEqual(parse_conn_str(self.test_string)[1], '')
    def test_hostname(self):
        self.assertEqual(parse_conn_str(self.test_string)[2], 'hostname')
    def test_port(self):
        self.assertEqual(parse_conn_str(self.test_string)[3], '')
    def test_path(self):
        self.assertEqual(parse_conn_str(self.test_string)[4], '')

class test_username_hostname(TestCase):
    def setUp(self):
        self.test_string = 'username@hostname'
    def test_username(self):
        self.assertEqual(parse_conn_str(self.test_string)[0], 'username')
    def test_password(self):
        self.assertEqual(parse_conn_str(self.test_string)[1], '')
    def test_hostname(self):
        self.assertEqual(parse_conn_str(self.test_string)[2], 'hostname')
    def test_port(self):
        self.assertEqual(parse_conn_str(self.test_string)[3], '')
    def test_path(self):
        self.assertEqual(parse_conn_str(self.test_string)[4], '')

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
        self.assertEqual(parse_conn_str(self.test_string)[3], '')
    def test_path(self):
        self.assertEqual(parse_conn_str(self.test_string)[4], '')

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
        self.assertEqual(parse_conn_str(self.test_string)[4], '')

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


if __name__ == '__main__':
    '''
    TODO: doc
    '''

    main()
