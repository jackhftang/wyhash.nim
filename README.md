# wyhash.nim

Nim wrapper of [wyhash](https://github.com/wangyi-fudan/wyhash).

## Usage

```nim
assert wyhash64("message digest", 3) == 0xadc146444841c430u64
```