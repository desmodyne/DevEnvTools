#!/usr/bin/env bats

# test-regex.bats
#
# bats script for a regex to parse ssh connection string
#
# author  : stefan schablowski
# contact : stefan.schablowski@desmodyne.com
# created : 2017-05-17


# https://github.com/sstephenson/bats
# ssh connection string: [username[:password]@]hostname[:port][/folder]


regex='\(\)\(\)\([a-z]+\)'


# TODO: if aligned braces are used, bats fails with @test: command not found:
#   @test "test 01 username"
#   {
#     ...
#   }


test_str='hostname'

@test "test 01 username" {
  result="$(echo "${test_str}" | sed -e "s|${regex}|\1|g")"
  [ "$result" == '' ]
}

@test "test 01 password" {
  result="$(echo "${test_str}" | sed -e "s|${regex}|\2|g")"
  [ "$result" == '' ]
}

@test "test 01 hostname" {
  result="$(echo "${test_str}" | sed -e "s|${regex}|\3|g")"
  [ "$result" == 'hostname' ]
}

@test "test 01 port" {
  result="$(echo "${test_str}" | sed -e "s|${regex}|\4|g")"
  [ "$result" == '' ]
}

@test "test 01 folder" {
  result="$(echo "${test_str}" | sed -e "s|${regex}|\5|g")"
  [ "$result" == '' ]
}


test_str='username@hostname'

@test "test 01 username" {
  result="$(echo "${test_str}" | sed -e "s|${regex}|\1|g")"
  [ "$result" == 'username' ]
}

@test "test 01 password" {
  result="$(echo "${test_str}" | sed -e "s|${regex}|\2|g")"
  [ "$result" == '' ]
}

@test "test 01 hostname" {
  result="$(echo "${test_str}" | sed -e "s|${regex}|\3|g")"
  [ "$result" == 'hostname' ]
}

@test "test 01 port" {
  result="$(echo "${test_str}" | sed -e "s|${regex}|\4|g")"
  [ "$result" == '' ]
}

@test "test 01 folder" {
  result="$(echo "${test_str}" | sed -e "s|${regex}|\5|g")"
  [ "$result" == '' ]
}
