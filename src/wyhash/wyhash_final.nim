{.compile: "wyhash_final.c".}

proc wyhash(key: ptr cuchar, len: culonglong, seed: culonglong, secret: ptr culonglong): culonglong {.importc.}

proc wyhash64*(message: string, seed: uint64): uint64 =
  var secret: array[5, culonglong] = [
    0xa0761d6478bd642fu64, 0xe7037ed1a0b428dbu64, 0x8ebc6af09c88c6e3u64, 0x589965cc75374cc3u64, 0x1d8e4e27c47d124fu64
  ]
  if message.len == 0:
    result = wyhash(cast[ptr cuchar](nil), 0, seed, secret[0].addr)
  else:
    result = wyhash(cast[ptr cuchar](message[0].unsafeAddr), message.len.uint64, seed, secret[0].addr)


  
