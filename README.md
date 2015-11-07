# Benchmark

Tests were made using [cryload](https://github.com/Sdogruyol/cryload)

## Commands

```bash
cryload -s http://127.0.0.1:3000 -n 10000
cryload -s http://localhost:3000 -n 10000
```

## Tests

### Ruby

#### WEBrick

- WEBrick 1.3.1: Requests per second: Request p/s: 563.764

#### Puma

- Puma 2.15.2: Request p/s: 7485.69
    - Min/Max Threads: 0, 16

- Puma 2.15.2: Request p/s: 7965.09
    - Min/Max Threads: 0, 32

### Crystal

