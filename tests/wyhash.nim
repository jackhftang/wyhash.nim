import unittest
import wyhash

test "wyhash":
  # https://github.com/wangyi-fudan/wyhash/blob/wyhash_final/test_vector.cpp
  check: wyhash64("",0) == 0x42bc986dc5eec4d3u64
  check: wyhash64("a",1) == 0x84508dc903c31551u64
  check: wyhash64("abc",2) == 0xbc54887cfc9ecb1u64
  check: wyhash64("message digest",3) == 0xadc146444841c430u64
  check: wyhash64("abcdefghijklmnopqrstuvwxyz",4) == 0x4c0977bd4f14f34au64
  check: wyhash64("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789",5) == 0x6f8bd609a8a276d2u64
  check: wyhash64("12345678901234567890123456789012345678901234567890123456789012345678901234567890",6) == 0x498d7c21668259adu64
