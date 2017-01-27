---
title: "R Consortium Funded Carpentries Instructor Training"
author: "Laurent Gatto"
output:
  rmdshower::shower_presentation:
    self_contained: true
    katex: true
    theme: ribbon
    ratio: 16x10
---

## R Consortium Funded Carpentries Instructor Training

```
Laurent Gatto
Software/Data Carpentry Instructor
Senior Research Associate, University of Cambridge, UK
```

## The [**Software**](http://software-carpentry.org/) and [**Data Carpentry**](http://www.datacarpentry.org/)

> Their **mission** is to *teach researchers in science, engineering,
> medicine, and related disciplines the computing skills they need to
> get more done in less time and with less pain.*

The quality and success of the Software and Data Carpentry bootcamps
is assured by high-quality, pedagogically sound, collaboratively
developed and openly-available teaching material and **instructors**,
who themselves are trained in effective teaching methodology.

## The workshop


- Proposal: https://raw.githubusercontent.com/lgatto/SC-ICS-Proposal/master/SC-ISC-proposal.md
- Accepted: February 2016
- Training: 19-20 September 2017, Cambridge, UK
- 29 participants
- [Blog post](https://www.software.ac.uk/blog/2016-10-18-cambridge-instructor-training-19-20-september)

## Outputs: Status on 6 January 2017

- 10 completed (most for both DC and SC)
- about half a dozen are in progress
- remaining dozen haven't done anything since the training ended

Our one-year completion rate is somewhere 40% - 60%, depending on the
group.  When we start poking people at the end of Jauary ("finish or
time out"), we'll see an up-tick.

## Outputs: MCQ on recycling vectors in R

Q: What is the correct answer for `x + y` when:
```r
    x <- c(1, 2, 3, 4)
    y <- c(1, 2)
```

a) `2 4 4 6`    (correct)
b) `2 3 4 5`    (added 1 to positions 3 and 4 in x)
c) `2 4 3 4`    (forgot to recycle)
d) `2 4`        (did not recycle the shorter vector to the longer)

More examples on the [grant repo](https://github.com/lgatto/SC-ICS-Proposal/blob/master/exercises.md).
