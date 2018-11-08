Move into some folders

  $ mkdir -p a/b/c/d
  $ cd a/b/c/d

Move down to b

  $ up b

Check that it went OK

  $ ls
  c


Now lets try to jump to folder with spaces in it

  $ mkdir -p 'a/space dir/f/g/h'
  $ cd 'a/space dir/f/g/h'
  $ up 'space dir'
  $ ls
  f

Issue [#6] in github, `Fix error "not an identifier"`. I think the actual error
was due to OS X vs gnuutils differences. But it wont hurt to have another test
case.

  $ cd 'f/g/h'
  $ up f
  $ ls
  g

Lets also make sure we can jump beyond a 'space dir'

  $ cd g/h
  $ up a
  $ ls
  space dir


If the provided argument is an integer, go up as many times as required.

  $ cd 'space dir/f/g/h'
  $ up 1
  $ ls
  h
  $ up 2
  $ ls
  f

If there is no argument, go up to the the first parent

  $ mkdir -p f/g/h
  $ cd 'f/g/h'
  $ up 
  $ ls 
  h
  $ up
  $ ls
  g

Make sure folders can be only numbers, and they are understood

  $ mkdir -p ncpc/2015/whistles
  $ cd ncpc/2015/whistles
  $ up 2015
  $ ls
  whistles

Also document (with this test) the ambigious case

  $ mkdir -p 1/2/3
  $ cd 1/2/3
  $ up 1
  $ ls
  2

Exclude current working directory from parent list

  $ mkdir -p aaa/bbb/aaa/ccc
  $ cd aaa/bbb/aaa
  $ up aaa
  $ ls
  bbb
