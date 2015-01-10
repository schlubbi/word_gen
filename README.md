# WordGen

A simple word list generator written in Ruby. It generates all possible combinations
of characters in the given length. It comes with different character sets to choose from.
You can use `word_gen -l` to get a list of all available sets.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'word_gen'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install word_gen

## Usage

```
word_gen -h
Usage: word_gen [options]
    -w, --world-length WORD_LENGTH   The length of the word
    -s, --set SET                    Available charachter sets
                                      (NUMERIC,LOWER,UPPER,COMMON_SYBBOLS,
                                      ALL_SYMBOLS,L_ALPHA_NUMERIC,U_ALPHA_NUMERIC,
                                      LCS_ALPHA_NUMERIC,UCS_ALPHA_NUMERIC,
                                      LS_ALPHA_NUMERIC,US_ALPHA_NUMERIC,
                                      LU_COMMON_SYMBOLS,LOWER_UPPER_NUMERIC,ALL)
    -o, --output-file OUTPUT_FILE    Output file name
    -h, --help                       Prints this help
    -l, --list-sets                  Lists available character sets
```

## Examples

It can be used with other software like aircrack-ng:

```
  word_gen -w 4 -s NUMERIC | aircrack-ng -w - some_file.cap
```

Or as a standalone command line tool:
```
word_gen -w 3 -s NUMERIC
11
12
13
14
15
16
17
18
19
10
21
22
23
24
25
26
27
28
29
20
31
32
33
34
35
36
37
38
39
30
41
42
43
44
45
46
47
48
49
40
51
52
53
54
55
56
57
58
59
50
61
62
63
64
65
66
67
68
69
60
71
72
73
74
75
76
77
78
79
70
81
82
83
84
85
86
87
88
89
80
91
92
93
94
95
96
97
98
99
90
01
02
03
04
05
06
07
08
09
00
```

## Specs

TODO: write more specs


## Contributing

1. Fork it ( https://github.com/[my-github-username]/word_gen/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
