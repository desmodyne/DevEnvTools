#!/usr/bin/env python
# encoding: utf-8

'''
test_parse_ssh_conn_string.py

unit test for parse_ssh_conn_string.py

author  : stefan schablowski
contact : sschablowski@gmail.com
created : 2017-05-22
'''


from subprocess import check_output
from unittest   import main, TestCase


# TODO: check for subprocess.CalledProcessError not being raised
# TODO: remove code duplication


# test subject is a python script; call it as a shell script
# anyway as this is the way that script is used in production
test_subject = './parse_ssh_conn_string.py'


class test_hostname(TestCase):
    def setUp(self):
        test_string = 'hostname'
        self.lines  = check_output([test_subject, test_string]).splitlines()
    def test_username(self):
        self.assertEqual(self.lines[0], '')
    def test_password(self):
        self.assertEqual(self.lines[1], '')
    def test_hostname(self):
        self.assertEqual(self.lines[2], 'hostname')
    def test_port(self):
        self.assertEqual(self.lines[3], '')
    def test_path(self):
        self.assertEqual(self.lines[4], '')

class test_username_hostname(TestCase):
    def setUp(self):
        test_string = 'username@hostname'
        self.lines  = check_output([test_subject, test_string]).splitlines()
    def test_username(self):
        self.assertEqual(self.lines[0], 'username')
    def test_password(self):
        self.assertEqual(self.lines[1], '')
    def test_hostname(self):
        self.assertEqual(self.lines[2], 'hostname')
    def test_port(self):
        self.assertEqual(self.lines[3], '')
    def test_path(self):
        self.assertEqual(self.lines[4], '')

class test_username_password_hostname(TestCase):
    def setUp(self):
        test_string = 'username:password@hostname'
        self.lines  = check_output([test_subject, test_string]).splitlines()
    def test_username(self):
        self.assertEqual(self.lines[0], 'username')
    def test_password(self):
        self.assertEqual(self.lines[1], 'password')
    def test_hostname(self):
        self.assertEqual(self.lines[2], 'hostname')
    def test_port(self):
        self.assertEqual(self.lines[3], '')
    def test_path(self):
        self.assertEqual(self.lines[4], '')

class test_username_password_hostname_port(TestCase):
    def setUp(self):
        test_string = 'username:password@hostname:1234'
        self.lines  = check_output([test_subject, test_string]).splitlines()
    def test_username(self):
        self.assertEqual(self.lines[0], 'username')
    def test_password(self):
        self.assertEqual(self.lines[1], 'password')
    def test_hostname(self):
        self.assertEqual(self.lines[2], 'hostname')
    def test_port(self):
        self.assertEqual(self.lines[3], '1234')
    def test_path(self):
        self.assertEqual(self.lines[4], '')

class test_username_password_hostname_port_path(TestCase):
    def setUp(self):
        test_string = 'username:password@hostname:1234/path'
        self.lines  = check_output([test_subject, test_string]).splitlines()
    def test_username(self):
        self.assertEqual(self.lines[0], 'username')
    def test_password(self):
        self.assertEqual(self.lines[1], 'password')
    def test_hostname(self):
        self.assertEqual(self.lines[2], 'hostname')
    def test_port(self):
        self.assertEqual(self.lines[3], '1234')
    def test_path(self):
        self.assertEqual(self.lines[4], '/path')


if __name__ == '__main__':
    '''
    TODO: doc
    '''

    main()
