# delegating-speed-test

Test different methods of ruby delegation for performance

# Setup

```
bundle
bundle exec ./run.rb
```

First cut runs with ruby 2.3.3
```
       user     system      total        real
MyModel  0.180000   0.000000   0.180000 (  0.187503)
Prof::SimpleDelegator  1.060000   0.000000   1.060000 (  1.056284)
Prof::Forwardable  0.590000   0.000000   0.590000 (  0.593272)
Prof::RailsDelegate  0.530000   0.000000   0.530000 (  0.531157)
```

And with ruby 2.4.1
```
       user     system      total        real
MyModel  0.170000   0.000000   0.170000 (  0.178232)
Prof::SimpleDelegator  0.960000   0.000000   0.960000 (  0.959083)
Prof::Forwardable  0.540000   0.000000   0.540000 (  0.534384)
Prof::RailsDelegate  0.500000   0.010000   0.510000 (  0.503619)
```
