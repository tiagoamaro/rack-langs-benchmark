# Benchmark

## Commands

```bash
ab -n 2700 -c 90 -k -H "Accept-Encoding: gzip, deflate" http://127.0.0.1:3000/
ab -n 2700 -c 90 -k -H "Accept-Encoding: gzip, deflate" http://localhost:3000/
```

## Tests

### Ruby

#### WEBrick

- WEBrick 1.3.1: Requests per second:  597.39 [#/sec] (mean)

#### Puma

- Puma 2.15.2: Requests per second:    1780.30 [#/sec] (mean)
    - Min/Max Threads: 0, 16

- Puma 2.15.2: Requests per second:    3022.47 [#/sec] (mean)
    - Min/Max Threads: 0, 32

