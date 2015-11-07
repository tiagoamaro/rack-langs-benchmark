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

- WEBrick 1.3.1: Request p/s: 570.418

#### Puma

- Puma 2.15.2: Request p/s: 9280.11
    - Min/Max Threads: 0, 16

- Puma 2.15.2: Request p/s: 9097.62
    - Min/Max Threads: 0, 32

### Crystal

- Crystal 0.9.1 HTTP Server: Request p/s: 16221.9
