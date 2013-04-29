## Ex-1-P60.hs

运行：

	Prelude> :load Ex-1-P60.hs
	*Main> let x = Cons 'a' Nil
	*Main> toList x
	"a"
	*Main> let x = Cons 'a' (Cons 'b' (Cons 'c' Nil))
	*Main> toList x
	"abc"


## Ex-1-P69.hs

运行：

	Prelude> :load Ex-1-P69.hs
	*Main> length' "Hello, World."
	13
	*Main> length "Hello, World."
	13
	*Main> length []
	0
	*Main> length' []
	0

## Ex-3-P69.hs

	:load Ex-3-P69.hs
	mean [1,2,3]       -- 2
	mean [1.0,2,3.3]   -- 2.1
