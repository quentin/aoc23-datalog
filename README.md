# Advent of Code 2023 in Datalog

[AoC23](https://adventofcode.com/2023) using [Souffle](https://souffle-lang.github.io/) datalog.

Following last year [Advent of Code 2022 in Datalog](http://github.com/quentin/aoc22-datalog)!
And [Advent of Code 2021 in Datalog](https://github.com/quentin/aoc21-datalog)!

## How to run?

Puzzles are organized by day; answer to day 1 is in `day01/day01.dl`.
The datalog files have `.dl` extension.

When possible the original `input` file is used. Otherwise a simple transformation is applied (like numbering the lines) and the input files have `.facts` extension. The `.facts` files are produced from the original `input` file of the puzzle by the `prepare.rb` script.

### Interpreter mode

The quickest way to run a datalog program is to execute Souffle in interpreter mode.
The interpreter mode may use `N` threads with option `souffle -j N`.

```bash
cd day01
# run
souffle --no-preprocessor -D- -F. -I.. day01.dl
# or run with 4 threads
souffle --no-preprocessor -D- -F. -I.. -j 4 day01.dl
```

### Compiled mode

For long programs, or programs with large input, Souffle can generate c++ code.

```bash
cd day06

# compile, run on 8 threads and drop the executable
souffle --no-preprocessor -D- -F. -I.. -j 8 -c day06.dl

# compile and keep the executable
souffle --no-preprocessor -D- -F. -I.. -o day06 day06a.dl
# run on 4 threads
./day06 -j 4
```

## What is going on?

By default only the `day0x.part1.answer` and `day0x.part2.answer` relations are printed out and provides the answers to the puzzle.

You may want to reveal the content of any of the intermediate relation by adding the appropriate `.output`
directive in the datalog code.


