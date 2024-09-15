#!/usr/bin/env bats

load ../src/example.sh

@test "addition of two positive numbers" {
  result=$(add 2 3)
  [ "$result" -eq 5 ]
}

@test "addition with zero" {
  result=$(add 0 5)
  [ "$result" -eq 5 ]
}

@test "addition of two negative numbers" {
  result=$(add -1 -1)
  [ "$result" -eq -2 ]
}
